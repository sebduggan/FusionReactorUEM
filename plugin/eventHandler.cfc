<cfcomponent extends="mura.plugin.pluginGenericEventHandler" output="false">

	<cffunction name="onApplicationLoad" returnType="any" access="public" output="false">
		<cfset local.FR_api = createObject("java","com.intergral.fusionreactor.api.FRAPI") />
		<cfset variables.pluginConfig.getApplication().setValue("FR_api", local.FR_api) />
	</cffunction>

	<cffunction name="onRenderEnd" returnType="any" access="public" output="false">
		<cfset local.response = arguments.$.event('__MuraResponse__') />
		<cfset local.FR_api = variables.pluginConfig.getApplication().getValue("FR_api") />

		<cfif isObject(local.FR_api)>
			<cfset local.response = replaceNoCase(local.response,'</body>','<cfscript>#local.FR_api.getInstance().getUemTrackingScript()#</cfscript>#chr(10)#</body>') />
			<cfset arguments.$.event('__MuraResponse__',local.response) />
		</cfif>
	</cffunction>

</cfcomponent>
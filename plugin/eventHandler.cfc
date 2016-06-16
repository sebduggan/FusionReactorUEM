<cfcomponent extends="mura.plugin.pluginGenericEventHandler" output="false">

        <cffunction name="onApplicationLoad" returnType="any" access="public" output="false">
                <cftry>
                        <cfset application.FrapiClass = createObject("java","com.intergral.fusionreactor.api.FRAPI") />
                        <cfcatch></cfcatch>
                </cftry>
        </cffunction>

        <cffunction name="onRenderEnd" returnType="any" access="public" output="false">
                <cfif structkeyexists(application, "FrapiClass")>
                        <cfset local.response = arguments.$.event('__MuraResponse__') />
                        <cfset local.response = replaceNoCase(local.response,'</body>','<script>#application.FrapiClass.getInstance().getUemTrackingScript()#</script>#chr(10)#</body>') />
                        <cfset arguments.$.event('__MuraResponse__', local.response) />
                </cfif>
        </cffunction>

</cfcomponent>
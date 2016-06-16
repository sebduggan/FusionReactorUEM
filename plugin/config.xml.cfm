<cfoutput>
<plugin>
	<name>Fusion Reactor UEM</name>
	<package>FusionReactorUEM</package>
	<directoryFormat>packageOnly</directoryFormat>
	<loadPriority>5</loadPriority>
	<version>1.0</version>
	<provider>Seb Duggan</provider>
	<providerURL>http://sebduggan.com</providerURL>
	<category>Utility</category>
	<settings />
	<eventHandlers>
		<eventHandler event="onApplicationLoad" component="plugin.eventHandler" persist="false" />
	</eventHandlers>
	<displayobjects location="global" />
</plugin>
</cfoutput>
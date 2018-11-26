
extentions = Jenkins.instance.getExtensionList(Maven.DescriptorImpl.class)[0]
installations = (extentions.installations as List)
installations.add(new hudson.tasks.Maven.MavenInstallation("M3", "/usr/bin", []))
extentions.installations = installations
extentions.save()

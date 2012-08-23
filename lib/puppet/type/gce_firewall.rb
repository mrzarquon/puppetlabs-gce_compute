Puppet::Type.newtype(:gce_firewall) do

  apply_to_device

  ensurable

  desc 'type for managing firewalls in google compute'

  newparam(:name, :namevar => true) do
    validate do |v|
      unless v =~ /[a-z]([-a-z0-9]*[a-z0-9])?/
        raise(Puppet::Error, "Invalid firewall name: #{v}")
      end
    end
  end

  newparam(:source) do
    #unless value =~ /^(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(\/(\d|[1-2]\d|3[0-2]))$/
    #    raise "Invalid network range #{value}"
    #end
  end
  newparam(:target) do

  end
  newparam(:protocol) do

  end
  newparam(:ports) do

  end


end

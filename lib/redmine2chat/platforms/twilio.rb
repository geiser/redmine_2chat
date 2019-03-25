module Redmine2chat::Platforms
  class Twilio
    #include Dry::Monads::Result::Mixin
	    require 'rubygems'
	    require 'twilio-ruby'

	    def create_chat(title)
	      

		account_sid = 'AC24659642cdf5e818f7b835e112bcc6c5'
		auth_token = '0bf4916236f94fb813d9bf028b9ac04f'
		@client = Twilio::REST::Client.new account_sid, auth_token

		message = @client.messages.create(
                             body: 'Hello there!',
                             from: 'whatsapp:+14155238886',
                             to: 'whatsapp:+5511941345755'
                           )
		puts message.sid

      #channel = robot_client.channels_create(name: title).channel
      #team = robot_client.team_info.team
      #bot_id = bot_client.auth_test.user_id

      #robot_client.channels_invite(channel: channel.id, user: bot_id)

      #Success({ im_id: channel.id, chat_url: "slack://channel?id=#{channel.id}&team=#{team.id}" })
    end

    def close_chat(im_id, message)
      #robot_client.chat_postMessage(channel: im_id, text: message)
      #robot_client.channels_archive(channel: im_id)

      Success(true)
    end

    def send_message(im_id, message, **)
      #robot_client.chat_postMessage(channel: im_id, text: message)
    end

    def icon_path
      '/plugin_assets/redmine_2chat/images/slack-icon.png'
    end

    def inactive_icon_path
      '/plugin_assets/redmine_2chat/images/slack-inactive-icon.png'
    end

    #private

    #def robot_client
      #@robot_client ||= RedmineBots::Slack.robot_client
    #end

    #def bot_client
      #@bot_client ||= RedmineBots::Slack.bot_client
    #end
  end
end


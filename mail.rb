# encoding: utf-8
require 'gmail'

gmail = Gmail.connect("hspark@sogaeyo.com","@th0heez")
puts gmail.logged_in?
#if gmail.logged then
gmail.deliver do
	charset = "UTF-8"
	content_transfer_encoding="8bit"
	from	"hspark@sogaeyo.com"
  to 		"hspark@sogaeyo.com"
  subject "이메일테스트"
  text_part do
		content_type "text/plain; charset=utf-8"
    body <<-EOF
			이메일 내용==========
		EOF
  end
end
#end
gmail.logout

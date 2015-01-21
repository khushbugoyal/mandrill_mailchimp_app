class InvitationMailer < MandrillMailer::TemplateMailer
  default from: 'khushbugcse@gmail.com'
  default from_name: 'khushbu'

  def invite()
    # in this example `invitation.invitees` is an Array
    #invitees = invitation.invitees.map { |invitee| { email: invitee.email, name: invitee.name } }

    mandrill_mail(
      template: 'all-011215',
      subject: 'test subject',
      to: "khushi.0031@gmail.com", #invitees,
        # to: invitation.email,
        # to: { email: invitation.email, name: 'Honored Guest' },
      vars: {
        'FNAME' => 'khushi',
      },
      important: true,
      inline_css: true,
    )
  end
end
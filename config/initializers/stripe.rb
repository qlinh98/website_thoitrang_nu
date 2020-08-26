# Rails.configuration.stripe = {
#   :publishable_key => 'pk_test_51H6VvgEzkbamtRiX5NMgAgByJ8C2PZMVgUKKGST3dnKHestSqakVZVraM0qHirXeN59lriWUhtf3CgEjTnPsJh4u00IDqWAbPX',
#   :secret_key      => 'sk_test_51H6VvgEzkbamtRiXpCFGdEoaa00oQPfyyXVpMOETF0iQyB0SLVk6cT3LgnAiaTlvDWScGkejnDMUBUugW053rN2900Z1qqvEf'
# }

# Stripe.api_key = 'sk_test_51H6VvgEzkbamtRiXpCFGdEoaa00oQPfyyXVpMOETF0iQyB0SLVk6cT3LgnAiaTlvDWScGkejnDMUBUugW053rN2900Z1qqvEf'


Rails.configuration.stripe = {
  # :publishable_key => ENV['PUBLISHABLE_KEY'],
  # :secret_key      => ENV['SECRET_KEY']
  :publishable_key => 'pk_test_51H7j0YKqatbrR01TGS24dI8Yym8XPEGtJMM19A08TGSfEsl3jaLmilR9wkEtllILtTZtzSHnrYvFh1bpf8YIIoOF00gBgauEYd' ,
  :secret_key      => 'sk_test_51H7j0YKqatbrR01TqbZmy0DjTrs9o36IdOrjOgiRpsFc9wUlipuyMoWqOjv24wo61JzIILs9qiOcsmfUXc4FI0kU00KabVCPKX'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
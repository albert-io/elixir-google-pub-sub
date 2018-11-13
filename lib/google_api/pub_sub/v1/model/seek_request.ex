# Copyright 2017 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the &quot;License&quot;);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an &quot;AS IS&quot; BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.


# NOTE: This class is auto generated by the swagger code generator program.
# https://github.com/swagger-api/swagger-codegen.git
# Do not edit the class manually.

defmodule GoogleApi.PubSub.V1.Model.SeekRequest do
  @moduledoc """
  Request for the &#x60;Seek&#x60; method. &lt;br&gt;&lt;br&gt; &lt;b&gt;BETA:&lt;/b&gt; This feature is part of a beta release. This API might be changed in backward-incompatible ways and is not recommended for production use. It is not subject to any SLA or deprecation policy.

  ## Attributes

  - snapshot (String.t): The snapshot to seek to. The snapshot&#39;s topic must be the same as that of the provided subscription. Format is &#x60;projects/{project}/snapshots/{snap}&#x60;. Defaults to: `null`.
  - time (DateTime.t): The time to seek to. Messages retained in the subscription that were published before this time are marked as acknowledged, and messages retained in the subscription that were published after this time are marked as unacknowledged. Note that this operation affects only those messages retained in the subscription (configured by the combination of &#x60;message_retention_duration&#x60; and &#x60;retain_acked_messages&#x60;). For example, if &#x60;time&#x60; corresponds to a point before the message retention window (or to a point before the system&#39;s notion of the subscription creation time), only retained messages will be marked as unacknowledged, and already-expunged messages will not be restored. Defaults to: `null`.
  """

  use GoogleApi.Gax.ModelBase

  @type t :: %__MODULE__{
    :"snapshot" => any(),
    :"time" => DateTime.t()
  }

  field(:"snapshot")
  field(:"time", as: DateTime)
end

defimpl Poison.Decoder, for: GoogleApi.PubSub.V1.Model.SeekRequest do
  def decode(value, options) do
    GoogleApi.PubSub.V1.Model.SeekRequest.decode(value, options)
  end
end

defimpl Poison.Encoder, for: GoogleApi.PubSub.V1.Model.SeekRequest do
  def encode(value, options) do
    GoogleApi.Gax.ModelBase.encode(value, options)
  end
end


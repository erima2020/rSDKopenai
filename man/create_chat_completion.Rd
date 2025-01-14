% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/functions.R
\name{create_chat_completion}
\alias{create_chat_completion}
\title{Create Chat Completion - Beta}
\usage{
create_chat_completion(
  messages,
  model,
  frequency_penalty = NULL,
  logit_bias = NULL,
  max_tokens = NULL,
  n = NULL,
  presence_penalty = NULL,
  stop = NULL,
  stream = NULL,
  temperature = NULL,
  top_p = NULL,
  user = NULL,
  return_response = F
)
}
\arguments{
\item{messages}{(array) The messages to generate chat completions for, in the chat format. Required}

\item{model}{(string) ID of the model to use. See the model endpoint compatibility table for details on which models work with the Chat API. Required}

\item{frequency_penalty}{(number) Number between -2.0 and 2.0. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model's likelihood to repeat the same line verbatim. See more information about frequency and presence penalties.}

\item{logit_bias}{(map) Modify the likelihood of specified tokens appearing in the completion. Accepts a json object that maps tokens (specified by their token ID in the tokenizer) to an associated bias value from -100 to 100. Mathematically, the bias is added to the logits generated by the model prior to sampling. The exact effect will vary per model, but values between -1 and 1 should decrease or increase likelihood of selection; values like -100 or 100 should result in a ban or exclusive selection of the relevant token.}

\item{max_tokens}{(integer) The maximum number of tokens to generate in the chat completion. The total length of input tokens and generated tokens is limited by the model's context length.}

\item{n}{(integer) How many chat completion choices to generate for each input message.}

\item{presence_penalty}{(number) Number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model's likelihood to talk about new topics. See more information about frequency and presence penalties.}

\item{stop}{(string or array) Up to 4 sequences where the API will stop generating further tokens.}

\item{stream}{(boolean) If set, partial message deltas will be sent, like in ChatGPT. Tokens will be sent as data-only server-sent events as they become available, with the stream terminated by a data: \link{DONE} message. See the OpenAI Cookbook for example code.}

\item{temperature}{(number) What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or top_p but not both.}

\item{top_p}{(number) An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10\% probability mass are considered. We generally recommend altering this or temperature but not both.}

\item{user}{(string) A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse. Learn more.}

\item{return_response}{(boolean) Whether to return the API response or parse the contents of the response. Defaults to FALSE (parse the response).}
}
\description{
Creates a completion for the chat message
}
\seealso{
\href{https://platform.openai.com/docs/api-reference/chat/create}{Open AI Documentation}
}

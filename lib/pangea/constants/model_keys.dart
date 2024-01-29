class ModelKey {
  ///user model keys
  static const String userAccess = 'access';
  static const String userRefresh = 'refresh';
  static const String userProfile = 'profile';
  static const String userFullName = 'full_name';
  static const String userCreatedAt = 'created_at';
  static const String userPangeaUserId = 'pangea_user_id';
  static const String userDateOfBirth = 'date_of_birth';
  static const String userTargetLanguage = 'target_language';
  static const String userSourceLanguage = 'source_language';
  static const String userSpeaks = 'speaks';
  static const String userCountry = 'country';
  static const String userInterests = 'interests';
  static const String l2LanguageKey = 'target_language';
  static const String l1LanguageKey = 'source_language';
  static const String publicProfile = 'public';
  static const String userId = 'user_id';

  static const String clientClassCity = "city";
  static const String clientClassCountry = "country";
  static const String clientClassDominantLanguage = "dominantLanguage";
  static const String clientClassTargetLanguage = "targetLanguage";
  static const String clientClassDescription = "description";
  static const String clientLanguageLevel = "languageLevel";
  static const String clientSchool = "schoolName";

  static const String clientIsPublic = "isPublic";
  static const String clientIsOpenEnrollment = 'isOpenEnrollment';
  static const String clientIsOpenExchange = 'isOpenExchange';
  static const String clientIsOneToOneChatClass = 'oneToOneChatClass';
  static const String clientIsOneToOneChatExchange = 'oneToOneChatExchange';
  static const String clientIsCreateRooms = 'isCreateRooms';
  static const String clientIsCreateRoomsExchange = 'isCreateRoomsExchange';
  static const String clientIsShareVideo = 'isShareVideo';
  static const String clientIsSharePhoto = 'isSharePhoto';
  static const String clientIsShareFiles = 'isShareFiles';
  static const String clientIsShareLocation = 'isShareLocation';
  static const String clientIsCreateStories = 'isCreateStories';
  static const String clientIsVoiceNotes = 'isVoiceNotes';
  static const String clientIsInviteOnlyStudents = 'isInviteOnlyStudents';
  static const String clientIsInviteOnlyExchanges = 'isInviteOnlyExchanges';

  static const String userL1 = "user_l1";
  static const String userL2 = "user_l2";
  static const String fullText = "full_text";
  static const String fullTextLang = "full_text_lang";
  static const String tokens = "tokens";
  static const String srcLang = "src_lang";
  static const String tgtLang = "tgt_lang";
  static const String word = "word";
  static const String lang = "lang";
  static const String deepL = "deepl";
  static const String langCode = 'langCode';
  static const String wordLang = "word_lang";
  static const String lemma = "lemma";
  static const String saveVocab = "save_vocab";
  static const String text = "text";
  static const String permissions = "permissions";
  static const String enableIGC = "enable_igc";
  static const String enableIT = "enable_it";

  static const String originalSent = "original_sent";
  static const String originalWritten = "original_written";
  static const String tokensSent = "tokens_sent";
  static const String tokensWritten = "tokens_written";
  static const String choreoRecord = "choreo_record";
  static const String useType = "use_type";

  static const String baseDefinition = "base_definition";
  static const String targetDefinition = "target_definition";
  static const String basePartOfSpeech = "base_part_of_speech";
  static const String targetPartOfSpeech = "target_part_of_speech";
  static const String partOfSpeech = "part_of_speech";
  static const String baseWord = "base_word";
  static const String targetWord = "target_word";
  static const String baseExampleSentence = "base_example_sentence";
  static const String targetExampleSentence = "target_example_sentence";

  //add goldTranslation, goldContinuance, chosenContinuance
  static const String goldTranslation = "gold_translation";
  static const String goldContinuance = "gold_continuance";
  static const String chosenContinuance = "chosen_continuance";

  // sourceText, currentText, bestContinuance, feedback_lang
  static const String sourceText = "src";
  static const String currentText = "current";
  static const String bestContinuance = "best_continuance";
  static const String feedbackLang = "feedback_lang";

  // bot options
  static const String languageLevel = "langauge_level";
  static const String conversationTopic = "conversation_topic";
  static const String keywords = "keywords";
  static const String safetyModeration = "safety_moderation";
}
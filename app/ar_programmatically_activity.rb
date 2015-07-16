class ARProgrammaticallyActivity < Android::App::Activity
#class ARProgrammaticallyActivity < Com::CraftAR::CraftARActivity

  # def finish
  #   super
  # end

  # def getAppDataDirectory
  #   super
  # end

  # def onBackPressed
  #   super
  # end

  # def onCreate savedInstanceState
  #   super
  # end

  # def onCreateOptionsMenu menu
  #   super
  # end

  # def onKeyDown keyCode, event
  #   super
  # end

  # def onKeyUp keyCode, event
  #   super
  # end

  # def onOptionsItemSelected item
  #   super
  # end

  # def onPause
  #   super
  # end

  # def onPostCreate
  #   super
  # end

  # def onPrepareOptionsMenu menu
  #   super
  # end

  # def onResume
  #   super
  # end

  # def setCameraView cameraView
  #   super
  # end

#   TAG = "CraftARTrackingExample"
#   COLLECTION_TOKEN = "craftarexamples1"


#   def onCreate savedInstanceState
#     super
#   end

#    def onPostCreate
# #     mainLayout = getLayoutInflater().inflate(
# #       R::Layout::Activity_ar_programmatically_ar_from_craftar, nil
# #     )
# #     # cameraView = mainLayout.findViewById(R::Id::Camera_preview)
# #     # self.setCameraView(cameraView)
# #     # setContentView(mainLayout)

# #     # mScanningLayout = findViewById(R::Id::Layout_scanning)

# #     # # Initialize the SDK. From this SDK, you will be able to retrieve the necessary modules to use the SDK (camera, tracking, and cloud-recgnition)
# #     # Com::CraftAR::CraftARSDK.init(getApplicationContext(),self)

# #     # # Get the camera to be able to do single-shot (if you just use finder-mode, this is not necessary)
# #     # mCamera = Com::CraftAR::CraftARSDK.getCamera()
# #     # mCamera.setImageHandler(self) # Tell the camera who will receive the image after takePicture()

# #     # # Setup the finder-mode: Note! PRESERVE THE ORDER OF THIS CALLS
# #     # @mCloudRecognition = Com::CraftAR::CraftARSDK.getCloudRecognition() # Obtain the cloud recognition module
# #     # @mCloudRecognition.setResponseHandler(self) #Tell the cloud recognition who will receive the responses from the cloud
# #     # @mCloudRecognition.setCollectionToken(COLLECTION_TOKEN) #Tell the cloud-recognition which token to use from the finder mode

# #     # #Start finder mode
# #     # @mCloudRecognition.startFinding()

# #     # #Obtain the tracking module
# #     # @mCraftARTracking = Com::CraftAR::CraftARSDK.getTracking()

# #     # @mCloudRecognition.connect(COLLECTION_TOKEN)
#    end

# #   def searchCompleted results
# #     # if results.size != 0
# #     #   item = results.first
# #     #   if item.isAR && item.getItemName == "AR programmatically"
# #     #     # Stop Finding
# #     #     @mCloudRecognition.stopFinding()

# #     #     #  Cast the found item to an AR item
# #     #     myARItem = Com::CraftAR::CraftARItemAR.new(item)

# #     #     #  Create an ImageContent from a local image (in raw/res, copied to the sdcard by the SDK)
# #     #     url = (getAppDataDirectory() + "/ar_programmatically_content.png")
# #     #     imageContent = Com::CraftAR::CraftARTrackingContentImage.new(url)
# #     #     imageContent.setWrapMode(Com::CraftAR::CraftARTrackingContent::ContentWrapMode::WRAP_MODE_ASPECT_FIT)

# #     #     #  Add content to the item
# #     #     myARItem.addContent(imageContent)

# #     #     #  Add content to the tracking SDK and start AR experience
# #     #     begin
# #     #       mCraftARTracking.addItem(myARItem)
# #     #       mCraftARTracking.startTracking()
# #     #       mScanningLayout.setVisibility(View::GONE)
# #     #     rescue CraftARSDKException => e
# #     #       # The item could not be added
# #     #       puts e.inspect
# #     #     end

# #     #   end
# #     # end
# #   end

# #   def connectCompleted
# #     puts "#{TAG} Collection token is valid"
# #   end

# #   def requestFailedResponse requestCode, responseError
# #     puts "requestFailedResponse requestCode: #{requestCode} responseError: #{responseError}"
# #   end

# #   # Callback received for SINGLE-SHOT only (after takePicture)
# #   def requestImageReceived image
# #     @mCloudRecognition.searchWithImage(COLLECTION_TOKEN,image)
# #   end

# #   def requestImageError error
# #     put "requestImageError #{error}"
# #   end

end
.class public Lcom/u8/sdk/baidu/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Landroid/content/Context;)Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;
    .registers 5
    .param p0, "mContext"    # Landroid/content/Context;

    .prologue
    .line 12
    .line 13
    const-string v2, "ORIENTATION"

    .line 14
    const/4 v3, 0x0

    .line 12
    invoke-static {p0, v2, v3}, Lcom/u8/sdk/baidu/PreferenceHelper;->getIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v1

    .line 15
    .local v1, "orientation":I
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->LANDSCAPE:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    .line 16
    .local v0, "mOrientation":Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;
    packed-switch v1, :pswitch_data_12

    .line 22
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->LANDSCAPE:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    .line 24
    :goto_e
    return-object v0

    .line 18
    :pswitch_f
    sget-object v0, Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;->PORTRAIT:Lcom/baidu/gamesdk/BDGameSDKSetting$Orientation;

    .line 19
    goto :goto_e

    .line 16
    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
    .end packed-switch
.end method

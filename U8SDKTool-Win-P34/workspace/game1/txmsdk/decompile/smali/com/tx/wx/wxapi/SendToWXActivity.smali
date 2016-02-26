.class public Lcom/tx/wx/wxapi/SendToWXActivity;
.super Ljava/lang/Object;
.source "SendToWXActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendShareTest(Ljava/lang/String;I)V
    .locals 7
    .param p1    # Ljava/lang/String;
    .param p2    # I

    new-instance v4, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;

    invoke-direct {v4}, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;-><init>()V

    const-string v5, "http://m.qicainiu.com/Home/Download"

    iput-object v5, v4, Lcom/tencent/mm/sdk/modelmsg/WXWebpageObject;->webpageUrl:Ljava/lang/String;

    new-instance v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    invoke-direct {v1, v4}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;-><init>(Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage$IMediaObject;)V

    sget-object v5, Lcom/tencent/tmgp/GameCatchFish;->app:Lcom/tencent/tmgp/GameCatchFish;

    invoke-virtual {v5}, Lcom/tencent/tmgp/GameCatchFish;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f040000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iput-object v5, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->title:Ljava/lang/String;

    iput-object p1, v1, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->description:Ljava/lang/String;

    sget-object v5, Lcom/tencent/tmgp/GameCatchFish;->app:Lcom/tencent/tmgp/GameCatchFish;

    invoke-virtual {v5}, Lcom/tencent/tmgp/GameCatchFish;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020001

    invoke-static {v5, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;->setThumbImage(Landroid/graphics/Bitmap;)V

    new-instance v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;

    invoke-direct {v2}, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->transaction:Ljava/lang/String;

    iput-object v1, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->message:Lcom/tencent/mm/sdk/modelmsg/WXMediaMessage;

    if-nez p2, :cond_0

    const/4 v5, 0x0

    :goto_0
    iput v5, v2, Lcom/tencent/mm/sdk/modelmsg/SendMessageToWX$Req;->scene:I

    sget-object v5, Lcom/tencent/tmgp/GameCatchFish;->app:Lcom/tencent/tmgp/GameCatchFish;

    const-string v6, "wx371ef14e03d63859"

    invoke-static {v5, v6}, Lcom/tencent/mm/sdk/openapi/WXAPIFactory;->createWXAPI(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/mm/sdk/openapi/IWXAPI;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/tencent/mm/sdk/openapi/IWXAPI;->sendReq(Lcom/tencent/mm/sdk/modelbase/BaseReq;)Z

    return-void

    :cond_0
    const/4 v5, 0x1

    goto :goto_0
.end method

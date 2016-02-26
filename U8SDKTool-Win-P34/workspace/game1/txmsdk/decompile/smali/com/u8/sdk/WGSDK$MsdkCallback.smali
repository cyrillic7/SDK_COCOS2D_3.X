.class Lcom/u8/sdk/WGSDK$MsdkCallback;
.super Ljava/lang/Object;
.source "WGSDK.java"

# interfaces
.implements Lcom/tencent/msdk/api/WGPlatformObserver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/u8/sdk/WGSDK;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MsdkCallback"
.end annotation


# instance fields
.field payTokenExp:J

.field final synthetic this$0:Lcom/u8/sdk/WGSDK;


# direct methods
.method constructor <init>(Lcom/u8/sdk/WGSDK;)V
    .registers 4

    .prologue
    .line 468
    iput-object p1, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->payTokenExp:J

    return-void
.end method

.method private letUserLogin()V
    .registers 15

    .prologue
    .line 476
    const-wide/16 v0, 0x0

    .line 477
    .local v0, "accessTokenExpire":J
    const-string v3, ""

    .line 478
    .local v3, "refreshToken":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 480
    .local v4, "refreshTokenExpire":J
    new-instance v8, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v8}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 481
    .local v8, "ret":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {v8}, Lcom/tencent/msdk/api/WGPlatform;->WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I

    .line 483
    const/4 v6, -0x1

    .line 484
    .local v6, "requesttype":I
    iget-object v10, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v11, v8, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    iput-object v11, v10, Lcom/u8/sdk/WGSDK;->openId:Ljava/lang/String;

    .line 485
    iget-object v10, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v11, v8, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    iput-object v11, v10, Lcom/u8/sdk/WGSDK;->pf:Ljava/lang/String;

    .line 486
    iget-object v10, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v11, v8, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    iput-object v11, v10, Lcom/u8/sdk/WGSDK;->pfKey:Ljava/lang/String;

    .line 488
    const-string v10, "U8SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "openId = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v12, v12, Lcom/u8/sdk/WGSDK;->openId:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",pf = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v12, v12, Lcom/u8/sdk/WGSDK;->pf:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ",pfKey = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v12, v12, Lcom/u8/sdk/WGSDK;->pfKey:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v10, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    # invokes: Lcom/u8/sdk/WGSDK;->getPlatform()Lcom/tencent/msdk/consts/EPlatform;
    invoke-static {v10}, Lcom/u8/sdk/WGSDK;->access$4(Lcom/u8/sdk/WGSDK;)Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v2

    .line 490
    .local v2, "platform":Lcom/tencent/msdk/consts/EPlatform;
    iget-object v10, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    # invokes: Lcom/u8/sdk/WGSDK;->getPlatform()Lcom/tencent/msdk/consts/EPlatform;
    invoke-static {v10}, Lcom/u8/sdk/WGSDK;->access$4(Lcom/u8/sdk/WGSDK;)Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v10

    sget-object v11, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    if-ne v10, v11, :cond_135

    .line 491
    const/4 v6, 0x0

    .line 492
    iget-object v10, v8, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_112

    .line 524
    :cond_72
    const-string v10, "U8SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "payToken = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v12, v12, Lcom/u8/sdk/WGSDK;->payToken:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    const-string v10, "U8SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "payTokenExp"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v12, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->payTokenExp:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const-string v10, "U8SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "AccessToken = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v12, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v12, v12, Lcom/u8/sdk/WGSDK;->accessToken:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    const-string v10, "U8SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "AccessTokenExpire"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    const-string v10, "U8SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "RefreshToken"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    const-string v10, "U8SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "RefreshTokenExpire = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v10

    const/4 v11, 0x4

    iget-object v12, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v12, v12, Lcom/u8/sdk/WGSDK;->accessToken:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 532
    iget-object v10, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v11, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v11, v11, Lcom/u8/sdk/WGSDK;->openId:Ljava/lang/String;

    # invokes: Lcom/u8/sdk/WGSDK;->encodeLoginResult(ILjava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v6, v11}, Lcom/u8/sdk/WGSDK;->access$5(Lcom/u8/sdk/WGSDK;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 533
    .local v7, "result":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/u8/sdk/U8SDK;->onLoginResult(Ljava/lang/String;)V

    .line 534
    return-void

    .line 492
    .end local v7    # "result":Ljava/lang/String;
    :cond_112
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/msdk/api/TokenRet;

    .line 493
    .local v9, "tr":Lcom/tencent/msdk/api/TokenRet;
    iget v11, v9, Lcom/tencent/msdk/api/TokenRet;->type:I

    packed-switch v11, :pswitch_data_160

    goto/16 :goto_6c

    .line 495
    :pswitch_11f
    iget-object v11, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v12, v9, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    iput-object v12, v11, Lcom/u8/sdk/WGSDK;->accessToken:Ljava/lang/String;

    .line 496
    iget-wide v0, v9, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    .line 497
    goto/16 :goto_6c

    .line 499
    :pswitch_129
    iget-object v11, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v12, v9, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    iput-object v12, v11, Lcom/u8/sdk/WGSDK;->payToken:Ljava/lang/String;

    .line 500
    iget-wide v12, v9, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    iput-wide v12, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->payTokenExp:J

    goto/16 :goto_6c

    .line 507
    .end local v9    # "tr":Lcom/tencent/msdk/api/TokenRet;
    :cond_135
    sget-object v10, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    if-ne v2, v10, :cond_72

    .line 508
    const/4 v6, 0x1

    .line 509
    iget-object v10, v8, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_140
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_72

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/msdk/api/TokenRet;

    .line 510
    .restart local v9    # "tr":Lcom/tencent/msdk/api/TokenRet;
    iget v11, v9, Lcom/tencent/msdk/api/TokenRet;->type:I

    packed-switch v11, :pswitch_data_168

    :pswitch_151
    goto :goto_140

    .line 512
    :pswitch_152
    iget-object v11, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v12, v9, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    iput-object v12, v11, Lcom/u8/sdk/WGSDK;->accessToken:Ljava/lang/String;

    .line 513
    iget-wide v0, v9, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    .line 514
    goto :goto_140

    .line 516
    :pswitch_15b
    iget-object v3, v9, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    .line 517
    iget-wide v4, v9, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    .line 518
    goto :goto_140

    .line 493
    :pswitch_data_160
    .packed-switch 0x1
        :pswitch_11f
        :pswitch_129
    .end packed-switch

    .line 510
    :pswitch_data_168
    .packed-switch 0x3
        :pswitch_152
        :pswitch_151
        :pswitch_15b
    .end packed-switch
.end method


# virtual methods
.method public OnCrashExtMessageNotify()Ljava/lang/String;
    .registers 2

    .prologue
    .line 538
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V
    .registers 6
    .param p1, "ret"    # Lcom/tencent/msdk/api/LoginRet;

    .prologue
    const/4 v3, 0x5

    .line 544
    iget v0, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    sparse-switch v0, :sswitch_data_4c

    .line 563
    :goto_6
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 566
    :goto_f
    :sswitch_f
    return-void

    .line 547
    :sswitch_10
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK$MsdkCallback;->letUserLogin()V

    goto :goto_f

    .line 558
    :sswitch_14
    const-string v0, "U8SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u767b\u5f55\u5931\u8d25ret;;;;;flag=="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    const/16 v0, 0x7d0

    iget v1, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    if-ne v0, v1, :cond_42

    .line 560
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5c1a\u672a\u5b89\u88c5\u5fae\u4fe1"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 561
    :cond_42
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_6

    .line 544
    :sswitch_data_4c
    .sparse-switch
        -0x2 -> :sswitch_14
        0x0 -> :sswitch_10
        0x7d0 -> :sswitch_14
        0x7d1 -> :sswitch_14
        0x7d2 -> :sswitch_14
        0x7d4 -> :sswitch_14
        0x7d5 -> :sswitch_f
    .end sparse-switch
.end method

.method public OnRelationNotify(Lcom/tencent/msdk/remote/api/RelationRet;)V
    .registers 2
    .param p1, "arg0"    # Lcom/tencent/msdk/remote/api/RelationRet;

    .prologue
    .line 571
    return-void
.end method

.method public OnWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V
    .registers 3
    .param p1, "ret"    # Lcom/tencent/msdk/api/WakeupRet;

    .prologue
    .line 575
    iget v0, p1, Lcom/tencent/msdk/api/WakeupRet;->flag:I

    sparse-switch v0, :sswitch_data_20

    .line 592
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onLogout()V

    .line 594
    :goto_c
    :sswitch_c
    return-void

    .line 578
    :sswitch_d
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK$MsdkCallback;->letUserLogin()V

    goto :goto_c

    .line 585
    :sswitch_11
    iget-object v0, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    # invokes: Lcom/u8/sdk/WGSDK;->showDiffLogin()V
    invoke-static {v0}, Lcom/u8/sdk/WGSDK;->access$6(Lcom/u8/sdk/WGSDK;)V

    goto :goto_c

    .line 588
    :sswitch_17
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onLogout()V

    goto :goto_c

    .line 575
    nop

    :sswitch_data_20
    .sparse-switch
        0x0 -> :sswitch_d
        0xbb9 -> :sswitch_17
        0xbba -> :sswitch_c
        0xbbb -> :sswitch_11
        0xbbc -> :sswitch_d
    .end sparse-switch
.end method

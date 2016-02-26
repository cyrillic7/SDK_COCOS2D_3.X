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
    .line 515
    iput-object p1, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->payTokenExp:J

    return-void
.end method

.method private letUserLogin()V
    .registers 15

    .prologue
    .line 523
    const-wide/16 v0, 0x0

    .line 524
    .local v0, "accessTokenExpire":J
    const-string v3, ""

    .line 525
    .local v3, "refreshToken":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 527
    .local v4, "refreshTokenExpire":J
    new-instance v8, Lcom/tencent/msdk/api/LoginRet;

    invoke-direct {v8}, Lcom/tencent/msdk/api/LoginRet;-><init>()V

    .line 528
    .local v8, "ret":Lcom/tencent/msdk/api/LoginRet;
    invoke-static {v8}, Lcom/tencent/msdk/api/WGPlatform;->WGGetLoginRecord(Lcom/tencent/msdk/api/LoginRet;)I

    .line 530
    const/4 v6, -0x1

    .line 531
    .local v6, "requesttype":I
    iget-object v10, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v11, v8, Lcom/tencent/msdk/api/LoginRet;->open_id:Ljava/lang/String;

    iput-object v11, v10, Lcom/u8/sdk/WGSDK;->openId:Ljava/lang/String;

    .line 532
    iget-object v10, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v11, v8, Lcom/tencent/msdk/api/LoginRet;->pf:Ljava/lang/String;

    iput-object v11, v10, Lcom/u8/sdk/WGSDK;->pf:Ljava/lang/String;

    .line 533
    iget-object v10, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v11, v8, Lcom/tencent/msdk/api/LoginRet;->pf_key:Ljava/lang/String;

    iput-object v11, v10, Lcom/u8/sdk/WGSDK;->pfKey:Ljava/lang/String;

    .line 535
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

    .line 536
    iget-object v10, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    # invokes: Lcom/u8/sdk/WGSDK;->getPlatform()Lcom/tencent/msdk/consts/EPlatform;
    invoke-static {v10}, Lcom/u8/sdk/WGSDK;->access$4(Lcom/u8/sdk/WGSDK;)Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v2

    .line 537
    .local v2, "platform":Lcom/tencent/msdk/consts/EPlatform;
    iget-object v10, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    # invokes: Lcom/u8/sdk/WGSDK;->getPlatform()Lcom/tencent/msdk/consts/EPlatform;
    invoke-static {v10}, Lcom/u8/sdk/WGSDK;->access$4(Lcom/u8/sdk/WGSDK;)Lcom/tencent/msdk/consts/EPlatform;

    move-result-object v10

    sget-object v11, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_QQ:Lcom/tencent/msdk/consts/EPlatform;

    if-ne v10, v11, :cond_139

    .line 538
    const/4 v6, 0x0

    .line 539
    iget-object v10, v8, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_6c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_116

    .line 571
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

    .line 572
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

    .line 573
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

    .line 574
    const-string v10, "U8SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "AccessTokenExpire"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    const-string v10, "U8SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "RefreshToken"

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const-string v10, "U8SDK"

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "RefreshTokenExpire = "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v10

    const/4 v11, 0x4

    iget-object v12, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v12, v12, Lcom/u8/sdk/WGSDK;->accessToken:Ljava/lang/String;

    invoke-virtual {v10, v11, v12}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 579
    iget-object v10, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v11, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v11, v11, Lcom/u8/sdk/WGSDK;->openId:Ljava/lang/String;

    iget-object v12, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v12, v12, Lcom/u8/sdk/WGSDK;->accessToken:Ljava/lang/String;

    # invokes: Lcom/u8/sdk/WGSDK;->encodeLoginResult(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v10, v6, v11, v12}, Lcom/u8/sdk/WGSDK;->access$5(Lcom/u8/sdk/WGSDK;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 580
    .local v7, "result":Ljava/lang/String;
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v10

    invoke-virtual {v10, v7}, Lcom/u8/sdk/U8SDK;->onLoginResult(Ljava/lang/String;)V

    .line 581
    return-void

    .line 539
    .end local v7    # "result":Ljava/lang/String;
    :cond_116
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/msdk/api/TokenRet;

    .line 540
    .local v9, "tr":Lcom/tencent/msdk/api/TokenRet;
    iget v11, v9, Lcom/tencent/msdk/api/TokenRet;->type:I

    packed-switch v11, :pswitch_data_164

    goto/16 :goto_6c

    .line 542
    :pswitch_123
    iget-object v11, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v12, v9, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    iput-object v12, v11, Lcom/u8/sdk/WGSDK;->accessToken:Ljava/lang/String;

    .line 543
    iget-wide v0, v9, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    .line 544
    goto/16 :goto_6c

    .line 546
    :pswitch_12d
    iget-object v11, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v12, v9, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    iput-object v12, v11, Lcom/u8/sdk/WGSDK;->payToken:Ljava/lang/String;

    .line 547
    iget-wide v12, v9, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    iput-wide v12, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->payTokenExp:J

    goto/16 :goto_6c

    .line 554
    .end local v9    # "tr":Lcom/tencent/msdk/api/TokenRet;
    :cond_139
    sget-object v10, Lcom/tencent/msdk/consts/EPlatform;->ePlatform_Weixin:Lcom/tencent/msdk/consts/EPlatform;

    if-ne v2, v10, :cond_72

    .line 555
    const/4 v6, 0x1

    .line 556
    iget-object v10, v8, Lcom/tencent/msdk/api/LoginRet;->token:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_144
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_72

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/tencent/msdk/api/TokenRet;

    .line 557
    .restart local v9    # "tr":Lcom/tencent/msdk/api/TokenRet;
    iget v11, v9, Lcom/tencent/msdk/api/TokenRet;->type:I

    packed-switch v11, :pswitch_data_16c

    :pswitch_155
    goto :goto_144

    .line 559
    :pswitch_156
    iget-object v11, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    iget-object v12, v9, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    iput-object v12, v11, Lcom/u8/sdk/WGSDK;->accessToken:Ljava/lang/String;

    .line 560
    iget-wide v0, v9, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    .line 561
    goto :goto_144

    .line 563
    :pswitch_15f
    iget-object v3, v9, Lcom/tencent/msdk/api/TokenRet;->value:Ljava/lang/String;

    .line 564
    iget-wide v4, v9, Lcom/tencent/msdk/api/TokenRet;->expiration:J

    .line 565
    goto :goto_144

    .line 540
    :pswitch_data_164
    .packed-switch 0x1
        :pswitch_123
        :pswitch_12d
    .end packed-switch

    .line 557
    :pswitch_data_16c
    .packed-switch 0x3
        :pswitch_156
        :pswitch_155
        :pswitch_15f
    .end packed-switch
.end method


# virtual methods
.method public OnCrashExtMessageNotify()Ljava/lang/String;
    .registers 2

    .prologue
    .line 585
    const/4 v0, 0x0

    return-object v0
.end method

.method public OnLoginNotify(Lcom/tencent/msdk/api/LoginRet;)V
    .registers 6
    .param p1, "ret"    # Lcom/tencent/msdk/api/LoginRet;

    .prologue
    const/4 v3, 0x5

    .line 591
    iget v0, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    sparse-switch v0, :sswitch_data_68

    .line 612
    :goto_6
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    .line 615
    :goto_f
    :sswitch_f
    return-void

    .line 594
    :sswitch_10
    const-string v0, "U8SDK"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u767b\u5f55\u6210\u529f===="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    sget-object v0, Lcom/u8/sdk/ChooseLoginTypeActivity;->loginActivity:Lcom/u8/sdk/ChooseLoginTypeActivity;

    invoke-virtual {v0}, Lcom/u8/sdk/ChooseLoginTypeActivity;->finish()V

    .line 596
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK$MsdkCallback;->letUserLogin()V

    goto :goto_f

    .line 607
    :sswitch_2f
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

    .line 608
    const/16 v0, 0x7d0

    iget v1, p1, Lcom/tencent/msdk/api/LoginRet;->flag:I

    if-ne v0, v1, :cond_5d

    .line 609
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->getContext()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u5c1a\u672a\u5b89\u88c5\u5fae\u4fe1"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 610
    :cond_5d
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    iget-object v1, p1, Lcom/tencent/msdk/api/LoginRet;->desc:Ljava/lang/String;

    invoke-virtual {v0, v3, v1}, Lcom/u8/sdk/U8SDK;->onResult(ILjava/lang/String;)V

    goto :goto_6

    .line 591
    nop

    :sswitch_data_68
    .sparse-switch
        -0x2 -> :sswitch_2f
        0x0 -> :sswitch_10
        0x7d0 -> :sswitch_2f
        0x7d1 -> :sswitch_2f
        0x7d2 -> :sswitch_2f
        0x7d4 -> :sswitch_2f
        0x7d5 -> :sswitch_f
    .end sparse-switch
.end method

.method public OnRelationNotify(Lcom/tencent/msdk/remote/api/RelationRet;)V
    .registers 2
    .param p1, "arg0"    # Lcom/tencent/msdk/remote/api/RelationRet;

    .prologue
    .line 620
    return-void
.end method

.method public OnWakeupNotify(Lcom/tencent/msdk/api/WakeupRet;)V
    .registers 3
    .param p1, "ret"    # Lcom/tencent/msdk/api/WakeupRet;

    .prologue
    .line 624
    iget v0, p1, Lcom/tencent/msdk/api/WakeupRet;->flag:I

    sparse-switch v0, :sswitch_data_20

    .line 641
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onLogout()V

    .line 643
    :goto_c
    :sswitch_c
    return-void

    .line 627
    :sswitch_d
    invoke-direct {p0}, Lcom/u8/sdk/WGSDK$MsdkCallback;->letUserLogin()V

    goto :goto_c

    .line 634
    :sswitch_11
    iget-object v0, p0, Lcom/u8/sdk/WGSDK$MsdkCallback;->this$0:Lcom/u8/sdk/WGSDK;

    # invokes: Lcom/u8/sdk/WGSDK;->showDiffLogin()V
    invoke-static {v0}, Lcom/u8/sdk/WGSDK;->access$6(Lcom/u8/sdk/WGSDK;)V

    goto :goto_c

    .line 637
    :sswitch_17
    invoke-static {}, Lcom/u8/sdk/U8SDK;->getInstance()Lcom/u8/sdk/U8SDK;

    move-result-object v0

    invoke-virtual {v0}, Lcom/u8/sdk/U8SDK;->onLogout()V

    goto :goto_c

    .line 624
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

.class Lcom/baidu/sapi2/c$a;
.super Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;
.source "SapiAccountRepository.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/sapi2/c;->a(Lcom/baidu/sapi2/callback/SapiCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/sapi2/callback/SapiCallback;

.field final synthetic b:Lcom/baidu/sapi2/result/LoginResult;

.field final synthetic c:Lcom/baidu/sapi2/c;


# direct methods
.method constructor <init>(Lcom/baidu/sapi2/c;Lcom/baidu/sapi2/callback/SapiCallback;Lcom/baidu/sapi2/result/LoginResult;)V
    .registers 4

    .prologue
    .line 570
    iput-object p1, p0, Lcom/baidu/sapi2/c$a;->c:Lcom/baidu/sapi2/c;

    iput-object p2, p0, Lcom/baidu/sapi2/c$a;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iput-object p3, p0, Lcom/baidu/sapi2/c$a;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-direct {p0}, Lcom/baidu/cloudsdk/common/http/HttpResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFailure(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 5
    .param p1, "error"    # Ljava/lang/Throwable;
    .param p2, "responseText"    # Ljava/lang/String;

    .prologue
    .line 653
    iget-object v0, p0, Lcom/baidu/sapi2/c$a;->b:Lcom/baidu/sapi2/result/LoginResult;

    const/16 v1, -0xca

    invoke-virtual {v0, v1}, Lcom/baidu/sapi2/result/LoginResult;->setResultCode(I)V

    .line 654
    iget-object v0, p0, Lcom/baidu/sapi2/c$a;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v1, p0, Lcom/baidu/sapi2/c$a;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-interface {v0, v1}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 655
    return-void
.end method

.method protected onFinish()V
    .registers 2

    .prologue
    .line 578
    iget-object v0, p0, Lcom/baidu/sapi2/c$a;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onFinish()V

    .line 579
    return-void
.end method

.method protected onStart()V
    .registers 2

    .prologue
    .line 573
    iget-object v0, p0, Lcom/baidu/sapi2/c$a;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    invoke-interface {v0}, Lcom/baidu/sapi2/callback/SapiCallback;->onStart()V

    .line 574
    return-void
.end method

.method protected onSuccess(ILjava/lang/String;)V
    .registers 18
    .param p1, "statusCode"    # I
    .param p2, "responseText"    # Ljava/lang/String;

    .prologue
    .line 584
    :try_start_0
    new-instance v6, Lorg/json/JSONObject;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 585
    .local v6, "obj":Lorg/json/JSONObject;
    const-string v13, "errInfo"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 586
    .local v4, "errInfo":Lorg/json/JSONObject;
    const-string v13, "no"

    const/16 v14, -0xca

    invoke-virtual {v4, v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v9

    .line 587
    .local v9, "resultCode":I
    iget-object v13, p0, Lcom/baidu/sapi2/c$a;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v9}, Lcom/baidu/sapi2/result/LoginResult;->setResultCode(I)V

    .line 588
    const-string v13, "msg"

    invoke-virtual {v4, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 589
    .local v10, "resultMsg":Ljava/lang/String;
    iget-object v13, p0, Lcom/baidu/sapi2/c$a;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-virtual {v13, v10}, Lcom/baidu/sapi2/result/LoginResult;->setResultMsg(Ljava/lang/String;)V

    .line 591
    packed-switch v9, :pswitch_data_140

    .line 642
    iget-object v13, p0, Lcom/baidu/sapi2/c$a;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/c$a;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-interface {v13, v14}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 649
    .end local v4    # "errInfo":Lorg/json/JSONObject;
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v9    # "resultCode":I
    .end local v10    # "resultMsg":Ljava/lang/String;
    :goto_2f
    return-void

    .line 593
    .restart local v4    # "errInfo":Lorg/json/JSONObject;
    .restart local v6    # "obj":Lorg/json/JSONObject;
    .restart local v9    # "resultCode":I
    .restart local v10    # "resultMsg":Ljava/lang/String;
    :pswitch_30
    iget-object v13, p0, Lcom/baidu/sapi2/c$a;->b:Lcom/baidu/sapi2/result/LoginResult;

    const-string v14, "\u767b\u5f55\u6210\u529f"

    invoke-virtual {v13, v14}, Lcom/baidu/sapi2/result/LoginResult;->setResultMsg(Ljava/lang/String;)V

    .line 594
    const-string v13, "data"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 595
    .local v2, "data":Lorg/json/JSONObject;
    const-string v13, "xml"

    invoke-virtual {v2, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 597
    .local v12, "xml":Ljava/lang/String;
    new-instance v1, Lcom/baidu/sapi2/SapiAccount;

    invoke-direct {v1}, Lcom/baidu/sapi2/SapiAccount;-><init>()V

    .line 598
    .local v1, "account":Lcom/baidu/sapi2/SapiAccount;
    iget-object v13, p0, Lcom/baidu/sapi2/c$a;->c:Lcom/baidu/sapi2/c;

    invoke-static {v13}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v13

    iget-object v13, v13, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/baidu/sapi2/utils/SapiUtils;->getAppName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    .line 599
    new-instance v8, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    invoke-direct {v8}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;-><init>()V

    .line 601
    .local v8, "reloginCredentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    iget-object v13, p0, Lcom/baidu/sapi2/c$a;->c:Lcom/baidu/sapi2/c;

    invoke-static {v13}, Lcom/baidu/sapi2/c;->c(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/dto/LoginDTO;

    move-result-object v13

    iget-object v13, v13, Lcom/baidu/sapi2/dto/LoginDTO;->account:Ljava/lang/String;

    iput-object v13, v8, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->account:Ljava/lang/String;

    .line 602
    iget-object v13, p0, Lcom/baidu/sapi2/c$a;->c:Lcom/baidu/sapi2/c;

    invoke-static {v13}, Lcom/baidu/sapi2/c;->c(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/dto/LoginDTO;

    move-result-object v13

    iget-object v13, v13, Lcom/baidu/sapi2/dto/LoginDTO;->password:Ljava/lang/String;

    invoke-static {v13}, Lcom/baidu/sapi2/utils/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->password:Ljava/lang/String;

    .line 603
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v7

    .line 604
    .local v7, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v13, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v12}, Ljava/lang/String;->getBytes()[B

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string v14, "UTF-8"

    invoke-interface {v7, v13, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 605
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 606
    .local v5, "eventType":I
    :goto_89
    const/4 v13, 0x1

    if-eq v5, v13, :cond_11e

    .line 607
    packed-switch v5, :pswitch_data_146

    .line 633
    :cond_8f
    :goto_8f
    :pswitch_8f
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5

    goto :goto_89

    .line 609
    :pswitch_94
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 610
    .local v11, "tag":Ljava/lang/String;
    const-string v13, "uname"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_b4

    .line 611
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/baidu/sapi2/SapiAccount;->username:Ljava/lang/String;
    :try_end_a6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a6} :catch_a7

    goto :goto_8f

    .line 645
    .end local v1    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v2    # "data":Lorg/json/JSONObject;
    .end local v4    # "errInfo":Lorg/json/JSONObject;
    .end local v5    # "eventType":I
    .end local v6    # "obj":Lorg/json/JSONObject;
    .end local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v8    # "reloginCredentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    .end local v9    # "resultCode":I
    .end local v10    # "resultMsg":Ljava/lang/String;
    .end local v11    # "tag":Ljava/lang/String;
    .end local v12    # "xml":Ljava/lang/String;
    :catch_a7
    move-exception v3

    .line 646
    .local v3, "e":Ljava/lang/Exception;
    iget-object v13, p0, Lcom/baidu/sapi2/c$a;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/c$a;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-interface {v13, v14}, Lcom/baidu/sapi2/callback/SapiCallback;->onFailure(Lcom/baidu/sapi2/result/SapiResult;)V

    .line 647
    invoke-static {v3}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 612
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "account":Lcom/baidu/sapi2/SapiAccount;
    .restart local v2    # "data":Lorg/json/JSONObject;
    .restart local v4    # "errInfo":Lorg/json/JSONObject;
    .restart local v5    # "eventType":I
    .restart local v6    # "obj":Lorg/json/JSONObject;
    .restart local v7    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v8    # "reloginCredentials":Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;
    .restart local v9    # "resultCode":I
    .restart local v10    # "resultMsg":Ljava/lang/String;
    .restart local v11    # "tag":Ljava/lang/String;
    .restart local v12    # "xml":Ljava/lang/String;
    :cond_b4
    :try_start_b4
    const-string v13, "displayname"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c3

    .line 613
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/baidu/sapi2/SapiAccount;->displayname:Ljava/lang/String;

    goto :goto_8f

    .line 614
    :cond_c3
    const-string v13, "uid"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d2

    .line 615
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    goto :goto_8f

    .line 616
    :cond_d2
    const-string v13, "bduss"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_e1

    .line 617
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    goto :goto_8f

    .line 618
    :cond_e1
    const-string v13, "ptoken"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f0

    .line 619
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/baidu/sapi2/SapiAccount;->ptoken:Ljava/lang/String;

    goto :goto_8f

    .line 620
    :cond_f0
    const-string v13, "stoken"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_ff

    .line 621
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v1, Lcom/baidu/sapi2/SapiAccount;->stoken:Ljava/lang/String;

    goto :goto_8f

    .line 622
    :cond_ff
    const-string v13, "ubi"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10e

    .line 623
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->ubi:Ljava/lang/String;

    goto :goto_8f

    .line 624
    :cond_10e
    const-string v13, "accounttype"

    invoke-virtual {v11, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8f

    .line 625
    invoke-interface {v7}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v8, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->accountType:Ljava/lang/String;

    goto/16 :goto_8f

    .line 636
    .end local v11    # "tag":Ljava/lang/String;
    :cond_11e
    iget-object v13, p0, Lcom/baidu/sapi2/c$a;->c:Lcom/baidu/sapi2/c;

    invoke-static {v13}, Lcom/baidu/sapi2/c;->b(Lcom/baidu/sapi2/c;)Lcom/baidu/sapi2/SapiConfiguration;

    move-result-object v13

    iget-object v13, v13, Lcom/baidu/sapi2/SapiConfiguration;->context:Landroid/content/Context;

    invoke-static {v13}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v13

    iget-object v14, v1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v13, v14, v8}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V

    .line 638
    invoke-static {}, Lcom/baidu/sapi2/share/b;->a()Lcom/baidu/sapi2/share/b;

    move-result-object v13

    invoke-virtual {v13, v1}, Lcom/baidu/sapi2/share/b;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 639
    iget-object v13, p0, Lcom/baidu/sapi2/c$a;->a:Lcom/baidu/sapi2/callback/SapiCallback;

    iget-object v14, p0, Lcom/baidu/sapi2/c$a;->b:Lcom/baidu/sapi2/result/LoginResult;

    invoke-interface {v13, v14}, Lcom/baidu/sapi2/callback/SapiCallback;->onSuccess(Lcom/baidu/sapi2/result/SapiResult;)V
    :try_end_13d
    .catch Ljava/lang/Exception; {:try_start_b4 .. :try_end_13d} :catch_a7

    goto/16 :goto_2f

    .line 591
    nop

    :pswitch_data_140
    .packed-switch 0x0
        :pswitch_30
    .end packed-switch

    .line 607
    :pswitch_data_146
    .packed-switch 0x2
        :pswitch_94
        :pswitch_8f
    .end packed-switch
.end method

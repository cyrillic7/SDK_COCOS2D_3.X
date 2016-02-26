.class final Lcom/baidu/sapi2/SapiWebView$SMSReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SapiWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/sapi2/SapiWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SMSReceiver"
.end annotation


# instance fields
.field private a:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .registers 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 2627
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2628
    iput-object p1, p0, Lcom/baidu/sapi2/SapiWebView$SMSReceiver;->a:Landroid/os/Handler;

    .line 2629
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "par"    # Ljava/lang/String;

    .prologue
    .line 2654
    const-string v6, "[^0-9]*([0-9]*)[^0-9]*"

    const-string v7, "$1-"

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2655
    .local v5, "onlyDigit":Ljava/lang/String;
    const-string v6, "-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2656
    .local v2, "digits":[Ljava/lang/String;
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_11
    if-ge v3, v4, :cond_20

    aget-object v1, v0, v3

    .line 2657
    .local v1, "d":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_1d

    .line 2661
    .end local v1    # "d":Ljava/lang/String;
    :goto_1c
    return-object v1

    .line 2656
    .restart local v1    # "d":Ljava/lang/String;
    :cond_1d
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 2661
    .end local v1    # "d":Ljava/lang/String;
    :cond_20
    const-string v1, ""

    goto :goto_1c
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x4
    .end annotation

    .prologue
    .line 2636
    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 2637
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v8, "pdus"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    move-object v0, v8

    check-cast v0, [Ljava/lang/Object;

    move-object v5, v0

    .line 2638
    .local v5, "messages":[Ljava/lang/Object;
    array-length v8, v5

    new-array v7, v8, [Landroid/telephony/SmsMessage;

    .line 2639
    .local v7, "smsMessage":[Landroid/telephony/SmsMessage;
    const/4 v6, 0x0

    .local v6, "n":I
    :goto_14
    array-length v8, v5

    if-ge v6, v8, :cond_4c

    .line 2640
    aget-object v8, v5, v6

    check-cast v8, [B

    check-cast v8, [B

    invoke-static {v8}, Landroid/telephony/SmsMessage;->createFromPdu([B)Landroid/telephony/SmsMessage;

    move-result-object v8

    aput-object v8, v7, v6

    .line 2641
    aget-object v8, v7, v6

    invoke-virtual {v8}, Landroid/telephony/SmsMessage;->getMessageBody()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/baidu/sapi2/SapiWebView$SMSReceiver;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2642
    .local v2, "code":Ljava/lang/String;
    iget-object v8, p0, Lcom/baidu/sapi2/SapiWebView$SMSReceiver;->a:Landroid/os/Handler;

    if-eqz v8, :cond_3e

    .line 2643
    iget-object v8, p0, Lcom/baidu/sapi2/SapiWebView$SMSReceiver;->a:Landroid/os/Handler;

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v4

    .line 2644
    .local v4, "message":Landroid/os/Message;
    iput-object v2, v4, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2645
    iget-object v8, p0, Lcom/baidu/sapi2/SapiWebView$SMSReceiver;->a:Landroid/os/Handler;

    invoke-virtual {v8, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_3e} :catch_41

    .line 2639
    .end local v4    # "message":Landroid/os/Message;
    :cond_3e
    add-int/lit8 v6, v6, 0x1

    goto :goto_14

    .line 2648
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v2    # "code":Ljava/lang/String;
    .end local v5    # "messages":[Ljava/lang/Object;
    .end local v6    # "n":I
    .end local v7    # "smsMessage":[Landroid/telephony/SmsMessage;
    :catch_41
    move-exception v3

    .line 2649
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v3, v8, v9}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2651
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_4c
    return-void
.end method

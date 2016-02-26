.class public Lcom/tencent/tmassistantsdk/internal/b/b;
.super Lcom/tencent/tmassistant/d;
.source "ProGuard"


# instance fields
.field a:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/tencent/tmassistant/d;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->a:Ljava/util/ArrayList;

    .line 36
    new-instance v0, Lcom/tencent/tmassistantsdk/internal/b/c;

    invoke-direct {v0, p0}, Lcom/tencent/tmassistantsdk/internal/b/c;-><init>(Lcom/tencent/tmassistantsdk/internal/b/b;)V

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->h:Landroid/os/IInterface;

    .line 43
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 3

    .prologue
    .line 106
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_24

    .line 107
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_12
    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/tmassistantsdk/internal/b/a;

    .line 109
    if-eqz v0, :cond_12

    .line 111
    invoke-interface {v0}, Lcom/tencent/tmassistantsdk/internal/b/a;->a()V

    goto :goto_12

    .line 116
    :cond_24
    return-void
.end method

.method protected a(Landroid/os/IBinder;)V
    .registers 3

    .prologue
    .line 122
    invoke-static {p1}, Lcom/tencent/assistant/sdk/remote/BaseService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/tencent/assistant/sdk/remote/BaseService;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->g:Landroid/os/IInterface;

    .line 123
    return-void
.end method

.method public a(Lcom/tencent/tmassistantsdk/internal/b/a;)V
    .registers 4

    .prologue
    .line 98
    const-string v0, "TMAssistantDownloadOpenSDKClient"

    const-string v1, "addAssistantOnActionListener"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 100
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_16
    return-void
.end method

.method public a([B)[B
    .registers 4

    .prologue
    .line 53
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_21

    .line 55
    invoke-super {p0}, Lcom/tencent/tmassistant/d;->g()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/tencent/assistant/sdk/remote/BaseService;

    .line 56
    if-eqz v0, :cond_17

    .line 58
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/tencent/assistant/sdk/remote/BaseService;->sendSyncData(Ljava/lang/String;[B)[B

    move-result-object v0

    .line 64
    :goto_16
    return-object v0

    .line 60
    :cond_17
    invoke-super {p0}, Lcom/tencent/tmassistant/d;->e()Z

    .line 61
    const-string v0, "TMAssistantDownloadOpenSDKClient"

    const-string v1, "initTMAssistantDownloadSDK"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    :cond_21
    const/4 v0, 0x0

    goto :goto_16
.end method

.method protected b()V
    .registers 7

    .prologue
    .line 130
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 131
    new-instance v1, Lcom/tencent/tmassistantbase/util/Cryptor;

    invoke-direct {v1}, Lcom/tencent/tmassistantbase/util/Cryptor;-><init>()V

    iget-object v2, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/tencent/tmassistantbase/util/Cryptor;->encrypt([B[B)[B

    move-result-object v0

    .line 133
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v2

    .line 135
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->g:Landroid/os/IInterface;

    check-cast v0, Lcom/tencent/assistant/sdk/remote/BaseService;

    iget-object v3, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->h:Landroid/os/IInterface;

    check-cast v1, Lcom/tencent/assistant/sdk/remote/SDKActionCallback;

    invoke-interface {v0, v3, v2, v1}, Lcom/tencent/assistant/sdk/remote/BaseService;->registerActionCallback(Ljava/lang/String;Ljava/lang/String;Lcom/tencent/assistant/sdk/remote/SDKActionCallback;)I

    move-result v0

    .line 137
    const-string v1, "TMAssistantDownloadOpenSDKClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onServiceConnected,registerActionCallback:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",tokenString:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",threadId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mServiceCallback:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->h:Landroid/os/IInterface;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",registed result:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const/4 v1, 0x2

    if-ne v0, v1, :cond_80

    .line 147
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/b/b;->a()V

    .line 149
    :cond_80
    return-void
.end method

.method public b([B)V
    .registers 6

    .prologue
    .line 75
    const-string v0, "TMAssistantDownloadOpenSDKClient"

    const-string v1, "sendAsyncData"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3b

    .line 78
    invoke-super {p0}, Lcom/tencent/tmassistant/d;->g()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/tencent/assistant/sdk/remote/BaseService;

    .line 79
    const-string v1, "TMAssistantDownloadOpenSDKClient"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAsyncData baseService:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    if-eqz v0, :cond_3c

    .line 82
    const-string v1, "TMAssistantDownloadOpenSDKClient"

    const-string v2, "baseService sendAsyncData"

    invoke-static {v1, v2}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->d:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/tencent/assistant/sdk/remote/BaseService;->sendAsyncData(Ljava/lang/String;[B)V

    .line 89
    :cond_3b
    :goto_3b
    return-void

    .line 85
    :cond_3c
    invoke-super {p0}, Lcom/tencent/tmassistant/d;->e()Z

    .line 86
    const-string v0, "TMAssistantDownloadOpenSDKClient"

    const-string v1, "initTMAssistantDownloadSDK"

    invoke-static {v0, v1}, Lcom/tencent/tmassistantbase/util/TMLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3b
.end method

.method protected c()Landroid/content/Intent;
    .registers 4

    .prologue
    .line 153
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.tencent.android.qqdownloader"

    const-string v2, "com.tencent.assistant.sdk.SDKSupportService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected d()V
    .registers 3

    .prologue
    .line 158
    iget-object v0, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->g:Landroid/os/IInterface;

    check-cast v0, Lcom/tencent/assistant/sdk/remote/BaseService;

    iget-object v1, p0, Lcom/tencent/tmassistantsdk/internal/b/b;->h:Landroid/os/IInterface;

    check-cast v1, Lcom/tencent/assistant/sdk/remote/SDKActionCallback;

    invoke-interface {v0, v1}, Lcom/tencent/assistant/sdk/remote/BaseService;->unregisterActionCallback(Lcom/tencent/assistant/sdk/remote/SDKActionCallback;)I

    move-result v0

    .line 159
    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 161
    invoke-virtual {p0}, Lcom/tencent/tmassistantsdk/internal/b/b;->a()V

    .line 163
    :cond_12
    return-void
.end method

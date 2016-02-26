.class final Lcom/baidu/sapi2/share/a;
.super Ljava/lang/Object;
.source "ShareUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/sapi2/share/a$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "SHARE_SERVICE"

.field static final b:Ljava/lang/String; = "SHARE_RECEIVER"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 325
    return-void
.end method

.method static a([B)Ljava/lang/String;
    .registers 6
    .param p0, "bytes"    # [B

    .prologue
    .line 289
    const-string v2, ""

    .line 290
    .local v2, "result":Ljava/lang/String;
    if-nez p0, :cond_6

    move-object v3, v2

    .line 301
    .end local v2    # "result":Ljava/lang/String;
    .local v3, "result":Ljava/lang/String;
    :goto_5
    return-object v3

    .line 294
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :cond_6
    :try_start_6
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 295
    .local v1, "md5":Ljava/security/MessageDigest;
    invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V

    .line 296
    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 297
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-static {v4}, Lcom/baidu/sapi2/share/a;->b([B)Ljava/lang/String;
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_19} :catch_1c

    move-result-object v2

    .end local v1    # "md5":Ljava/security/MessageDigest;
    :goto_1a
    move-object v3, v2

    .line 301
    .end local v2    # "result":Ljava/lang/String;
    .restart local v3    # "result":Ljava/lang/String;
    goto :goto_5

    .line 298
    .end local v3    # "result":Ljava/lang/String;
    .restart local v2    # "result":Ljava/lang/String;
    :catch_1c
    move-exception v0

    .line 299
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_1a
.end method

.method static a(Landroid/content/Context;)Ljava/util/List;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 120
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v5, "serviceList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-nez p0, :cond_8

    .line 148
    :cond_7
    :goto_7
    return-object v5

    .line 125
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "baidu.intent.action.account.SHARE_SERVICE"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x20

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    .line 128
    .local v6, "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v6, :cond_7

    .line 129
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1f
    :goto_1f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 130
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 131
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_1f

    .line 132
    new-instance v2, Landroid/content/Intent;

    const-string v7, "baidu.intent.action.account.SHARE_SERVICE"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 133
    .local v2, "intent":Landroid/content/Intent;
    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v8, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-le v7, v8, :cond_48

    .line 135
    const/16 v7, 0x20

    invoke-virtual {v2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 137
    :cond_48
    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_58

    iget-object v7, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1f

    .line 140
    :cond_58
    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5b
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_5b} :catch_5c

    goto :goto_1f

    .line 145
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v6    # "services":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_5c
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method static a(Landroid/content/Context;Z)Ljava/util/Map;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "includeSelf"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 85
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 86
    .local v2, "packages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/content/Intent;>;>;"
    if-nez p0, :cond_8

    .line 109
    :cond_7
    :goto_7
    return-object v2

    .line 89
    :cond_8
    invoke-static {p0}, Lcom/baidu/sapi2/share/a;->a(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 90
    .local v6, "shareServices":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-static {p0}, Lcom/baidu/sapi2/share/a;->b(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4

    .line 91
    .local v4, "shareReceivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 92
    .local v1, "intent":Landroid/content/Intent;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 93
    .local v5, "shareService":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/Intent;>;"
    const-string v7, "SHARE_SERVICE"

    invoke-interface {v5, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    .line 96
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v5    # "shareService":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/Intent;>;"
    :cond_36
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    .line 97
    .restart local v1    # "intent":Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_68

    .line 98
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v8, "SHARE_RECEIVER"

    invoke-interface {v7, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 100
    :cond_68
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 101
    .local v3, "shareReceiver":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/Intent;>;"
    const-string v7, "SHARE_RECEIVER"

    invoke-interface {v3, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3a

    .line 106
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "shareReceiver":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/content/Intent;>;"
    :cond_7e
    if-nez p1, :cond_7

    .line 107
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7
.end method

.method static a(Landroid/content/Context;Lcom/baidu/sapi2/share/ShareModel;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "shareModel"    # Lcom/baidu/sapi2/share/ShareModel;

    .prologue
    .line 426
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 438
    :cond_4
    :goto_4
    return-void

    .line 429
    :cond_5
    invoke-virtual {p1, p0}, Lcom/baidu/sapi2/share/ShareModel;->b(Landroid/content/Context;)V

    .line 430
    invoke-static {p0}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v1

    .line 431
    .local v1, "sapiContext":Lcom/baidu/sapi2/d;
    invoke-virtual {p1}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    .line 432
    invoke-virtual {p1}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 433
    .local v0, "invalidateAccount":Lcom/baidu/sapi2/SapiAccount;
    invoke-virtual {v1}, Lcom/baidu/sapi2/d;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v2

    if-eqz v2, :cond_35

    invoke-virtual {v1}, Lcom/baidu/sapi2/d;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v3, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 435
    :cond_35
    invoke-virtual {v1, v0}, Lcom/baidu/sapi2/d;->d(Lcom/baidu/sapi2/SapiAccount;)V

    goto :goto_4
.end method

.method static a(Landroid/content/Context;Lcom/baidu/sapi2/share/a$b;Z)V
    .registers 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/baidu/sapi2/share/a$b;
    .param p2, "includeSelf"    # Z

    .prologue
    .line 53
    if-eqz p0, :cond_4

    if-nez p1, :cond_5

    .line 75
    :cond_4
    return-void

    .line 56
    :cond_5
    invoke-static {p0, p2}, Lcom/baidu/sapi2/share/a;->a(Landroid/content/Context;Z)Ljava/util/Map;

    move-result-object v4

    .line 57
    .local v4, "sharablePackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/content/Intent;>;>;"
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_11
    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 58
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/Map<Ljava/lang/String;Landroid/content/Intent;>;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_11

    .line 59
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "SHARE_SERVICE"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    .line 60
    .local v3, "serviceIntent":Landroid/content/Intent;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    const-string v6, "SHARE_RECEIVER"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    .line 61
    .local v2, "receiverIntent":Landroid/content/Intent;
    if-eqz v3, :cond_59

    .line 63
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/baidu/sapi2/share/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    .line 65
    invoke-interface {p1, v3, v2}, Lcom/baidu/sapi2/share/a$b;->a(Landroid/content/Intent;Landroid/content/Intent;)V

    goto :goto_11

    .line 66
    :cond_53
    if-eqz v2, :cond_11

    .line 68
    invoke-interface {p1, v2}, Lcom/baidu/sapi2/share/a$b;->a(Landroid/content/Intent;)V

    goto :goto_11

    .line 70
    :cond_59
    if-eqz v2, :cond_11

    .line 71
    invoke-interface {p1, v2}, Lcom/baidu/sapi2/share/a$b;->a(Landroid/content/Intent;)V

    goto :goto_11
.end method

.method static declared-synchronized a(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strategy"    # Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .param p2, "shareModel"    # Lcom/baidu/sapi2/share/ShareModel;

    .prologue
    .line 353
    const-class v6, Lcom/baidu/sapi2/share/a;

    monitor-enter v6

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    if-nez p2, :cond_b

    .line 398
    :cond_9
    :goto_9
    monitor-exit v6

    return-void

    .line 356
    :cond_b
    :try_start_b
    invoke-virtual {p2, p0}, Lcom/baidu/sapi2/share/ShareModel;->b(Landroid/content/Context;)V

    .line 357
    invoke-static {p0}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v3

    .line 359
    .local v3, "sapiContext":Lcom/baidu/sapi2/d;
    sget-object v5, Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;->SILENT:Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;

    if-ne p1, v5, :cond_9c

    invoke-virtual {v3}, Lcom/baidu/sapi2/d;->h()Z

    move-result v5

    if-nez v5, :cond_9c

    invoke-virtual {v3}, Lcom/baidu/sapi2/d;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v5

    if-nez v5, :cond_9c

    invoke-virtual {p2}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_9c

    invoke-virtual {p2}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/baidu/sapi2/SapiAccount;

    invoke-static {v5}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v5

    if-eqz v5, :cond_9c

    .line 364
    invoke-virtual {p2}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/sapi2/SapiAccount;

    .line 365
    .local v4, "shareAccount":Lcom/baidu/sapi2/SapiAccount;
    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/d;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 366
    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/d;->c(Lcom/baidu/sapi2/SapiAccount;)V

    .line 367
    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/d;->d(Lcom/baidu/sapi2/SapiAccount;)V

    .line 368
    invoke-static {}, Lcom/baidu/sapi2/SapiAccountManager;->getSilentShareListener()Lcom/baidu/sapi2/SapiAccountManager$SilentShareListener;

    move-result-object v5

    if-eqz v5, :cond_68

    .line 369
    new-instance v5, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v7

    invoke-direct {v5, v7}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v7, Lcom/baidu/sapi2/share/a$a;

    invoke-direct {v7, v3}, Lcom/baidu/sapi2/share/a$a;-><init>(Lcom/baidu/sapi2/d;)V

    invoke-virtual {v5, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 379
    :cond_68
    invoke-virtual {p2}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_70
    :goto_70
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 380
    .local v0, "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {p0, v0}, Lcom/baidu/sapi2/share/a;->a(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v5

    if-eqz v5, :cond_70

    .line 381
    invoke-virtual {v3, v0}, Lcom/baidu/sapi2/d;->b(Lcom/baidu/sapi2/SapiAccount;)V
    :try_end_85
    .catchall {:try_start_b .. :try_end_85} :catchall_86

    goto :goto_70

    .line 353
    .end local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "sapiContext":Lcom/baidu/sapi2/d;
    .end local v4    # "shareAccount":Lcom/baidu/sapi2/SapiAccount;
    :catchall_86
    move-exception v5

    monitor-exit v6

    throw v5

    .line 385
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "sapiContext":Lcom/baidu/sapi2/d;
    .restart local v4    # "shareAccount":Lcom/baidu/sapi2/SapiAccount;
    :cond_89
    :try_start_89
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 386
    .local v1, "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v5, "app"

    iget-object v7, v4, Lcom/baidu/sapi2/SapiAccount;->app:Ljava/lang/String;

    invoke-interface {v1, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    const-string v5, "silent_login_share"

    invoke-static {v5, v1}, Lcom/baidu/sapi2/utils/StatService;->a(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_9

    .line 390
    .end local v1    # "extras":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "shareAccount":Lcom/baidu/sapi2/SapiAccount;
    :cond_9c
    invoke-virtual {p2}, Lcom/baidu/sapi2/share/ShareModel;->a()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .restart local v2    # "i$":Ljava/util/Iterator;
    :goto_a4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/sapi2/SapiAccount;

    .line 391
    .restart local v0    # "account":Lcom/baidu/sapi2/SapiAccount;
    invoke-static {p0, v0}, Lcom/baidu/sapi2/share/a;->a(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v5

    if-eqz v5, :cond_b9

    .line 392
    invoke-virtual {v3, v0}, Lcom/baidu/sapi2/d;->b(Lcom/baidu/sapi2/SapiAccount;)V

    .line 395
    :cond_b9
    invoke-static {p0, v0}, Lcom/baidu/sapi2/share/a;->b(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)V
    :try_end_bc
    .catchall {:try_start_89 .. :try_end_bc} :catchall_86

    goto :goto_a4
.end method

.method static a(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)Z
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    const/4 v1, 0x0

    .line 408
    if-nez p0, :cond_4

    .line 412
    :cond_3
    :goto_3
    return v1

    .line 411
    :cond_4
    invoke-static {p0}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v0

    .line 412
    .local v0, "sapiContext":Lcom/baidu/sapi2/d;
    invoke-static {p1}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/baidu/sapi2/d;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v2

    if-eqz v2, :cond_22

    invoke-virtual {v0}, Lcom/baidu/sapi2/d;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v2

    iget-object v2, v2, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v3, p1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_22
    invoke-virtual {v0}, Lcom/baidu/sapi2/d;->f()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    goto :goto_3
.end method

.method static a(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "calleePackageName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 223
    if-eqz p0, :cond_9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 237
    :cond_9
    :goto_9
    return v4

    .line 226
    :cond_a
    invoke-static {p0}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v5

    invoke-virtual {v5}, Lcom/baidu/sapi2/d;->k()Ljava/util/Map;

    move-result-object v0

    .line 228
    .local v0, "authorizedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {p0, p1}, Lcom/baidu/sapi2/share/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, "calleePackageSign":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 230
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_24
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 231
    .local v3, "packageNamePattern":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 233
    const/4 v4, 0x1

    goto :goto_9
.end method

.method static b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 268
    const-string v2, ""

    .line 269
    .local v2, "packageSign":Ljava/lang/String;
    if-eqz p0, :cond_a

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_c

    :cond_a
    move-object v3, v2

    .line 282
    .end local v2    # "packageSign":Ljava/lang/String;
    .local v3, "packageSign":Ljava/lang/String;
    :goto_b
    return-object v3

    .line 273
    .end local v3    # "packageSign":Ljava/lang/String;
    .restart local v2    # "packageSign":Ljava/lang/String;
    :cond_c
    :try_start_c
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/16 v6, 0x40

    invoke-virtual {v5, p1, v6}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 275
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v5, v5

    if-lez v5, :cond_28

    .line 276
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v6, 0x0

    aget-object v4, v5, v6

    .line 277
    .local v4, "signature":Landroid/content/pm/Signature;
    invoke-virtual {v4}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/sapi2/share/a;->a([B)Ljava/lang/String;
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_27} :catch_2a

    move-result-object v2

    .end local v1    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v4    # "signature":Landroid/content/pm/Signature;
    :cond_28
    :goto_28
    move-object v3, v2

    .line 282
    .end local v2    # "packageSign":Ljava/lang/String;
    .restart local v3    # "packageSign":Ljava/lang/String;
    goto :goto_b

    .line 279
    .end local v3    # "packageSign":Ljava/lang/String;
    .restart local v2    # "packageSign":Ljava/lang/String;
    :catch_2a
    move-exception v0

    .line 280
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_28
.end method

.method static b([B)Ljava/lang/String;
    .registers 9
    .param p0, "bytes"    # [B

    .prologue
    .line 308
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v2, "builder":Ljava/lang/StringBuilder;
    if-nez p0, :cond_c

    .line 310
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 319
    :goto_b
    return-object v6

    .line 312
    :cond_c
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    :goto_f
    if-ge v3, v4, :cond_2b

    aget-byte v1, v0, v3

    .line 313
    .local v1, "b":I
    and-int/lit16 v6, v1, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 314
    .local v5, "str":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_25

    .line 315
    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    :cond_25
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    .line 319
    .end local v1    # "b":I
    .end local v5    # "str":Ljava/lang/String;
    :cond_2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_b
.end method

.method static b(Landroid/content/Context;)Ljava/util/List;
    .registers 11
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 159
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    .local v5, "receiverList":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-nez p0, :cond_8

    .line 185
    :cond_7
    :goto_7
    return-object v5

    .line 164
    :cond_8
    :try_start_8
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "baidu.intent.action.SHARE_V6"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v9, 0x20

    invoke-virtual {v7, v8, v9}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1d
    :goto_1d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 168
    .local v6, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v1, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 169
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    if-eqz v1, :cond_1d

    .line 170
    new-instance v4, Landroid/content/Intent;

    const-string v7, "baidu.intent.action.SHARE_V6"

    invoke-direct {v4, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    .local v4, "intent":Landroid/content/Intent;
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0xb

    if-le v7, v8, :cond_46

    .line 173
    const/16 v7, 0x20

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 175
    :cond_46
    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1d

    iget-object v7, v1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p0, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_1d

    .line 178
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_59
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_59} :catch_5a

    goto :goto_1d

    .line 182
    .end local v0    # "activities":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v1    # "activityInfo":Landroid/content/pm/ActivityInfo;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v6    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :catch_5a
    move-exception v2

    .line 183
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_7
.end method

.method static b(Landroid/content/Context;Lcom/baidu/sapi2/SapiAccount;)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "account"    # Lcom/baidu/sapi2/SapiAccount;

    .prologue
    .line 448
    if-eqz p0, :cond_8

    invoke-static {p1}, Lcom/baidu/sapi2/utils/SapiUtils;->isValidAccount(Lcom/baidu/sapi2/SapiAccount;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 470
    :cond_8
    return-void

    .line 451
    :cond_9
    invoke-static {p0}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v3

    .line 453
    .local v3, "sapiContext":Lcom/baidu/sapi2/d;
    invoke-virtual {v3}, Lcom/baidu/sapi2/d;->d()Lcom/baidu/sapi2/SapiAccount;

    move-result-object v0

    .line 454
    .local v0, "currentAccount":Lcom/baidu/sapi2/SapiAccount;
    if-eqz v0, :cond_24

    iget-object v5, p1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v6, v0, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 455
    iget-object v5, p1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    iput-object v5, v0, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 456
    invoke-virtual {v3, v0}, Lcom/baidu/sapi2/d;->a(Lcom/baidu/sapi2/SapiAccount;)V

    .line 458
    :cond_24
    invoke-virtual {v3}, Lcom/baidu/sapi2/d;->f()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_2c
    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/baidu/sapi2/SapiAccount;

    .line 459
    .local v2, "loginAccount":Lcom/baidu/sapi2/SapiAccount;
    iget-object v5, p1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v6, v2, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2c

    .line 460
    iget-object v5, p1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    iput-object v5, v2, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 461
    invoke-virtual {v3, v2}, Lcom/baidu/sapi2/d;->c(Lcom/baidu/sapi2/SapiAccount;)V

    goto :goto_2c

    .line 464
    .end local v2    # "loginAccount":Lcom/baidu/sapi2/SapiAccount;
    :cond_4a
    invoke-virtual {v3}, Lcom/baidu/sapi2/d;->e()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_52
    :goto_52
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/baidu/sapi2/SapiAccount;

    .line 465
    .local v4, "shareAccount":Lcom/baidu/sapi2/SapiAccount;
    iget-object v5, p1, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    iget-object v6, v4, Lcom/baidu/sapi2/SapiAccount;->uid:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_52

    .line 466
    iget-object v5, p1, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    iput-object v5, v4, Lcom/baidu/sapi2/SapiAccount;->bduss:Ljava/lang/String;

    .line 467
    invoke-virtual {v3, v4}, Lcom/baidu/sapi2/d;->b(Lcom/baidu/sapi2/SapiAccount;)V

    goto :goto_52
.end method

.method static b(Landroid/content/Context;Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;Lcom/baidu/sapi2/share/ShareModel;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "strategy"    # Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;
    .param p2, "shareModel"    # Lcom/baidu/sapi2/share/ShareModel;

    .prologue
    .line 506
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    if-nez p2, :cond_7

    .line 514
    :cond_6
    :goto_6
    return-void

    .line 509
    :cond_7
    invoke-virtual {p2}, Lcom/baidu/sapi2/share/ShareModel;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 510
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/baidu/sapi2/share/ShareModel;->a(Ljava/lang/String;)V

    .line 512
    :cond_18
    invoke-virtual {p2, p1}, Lcom/baidu/sapi2/share/ShareModel;->a(Lcom/baidu/sapi2/utils/enums/LoginShareStrategy;)V

    .line 513
    invoke-virtual {p2, p0}, Lcom/baidu/sapi2/share/ShareModel;->a(Landroid/content/Context;)V

    goto :goto_6
.end method

.method static c(Landroid/content/Context;Ljava/lang/String;)V
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "reloginCredentials"    # Ljava/lang/String;

    .prologue
    .line 480
    if-eqz p0, :cond_8

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 494
    :cond_8
    :goto_8
    return-void

    .line 484
    :cond_9
    :try_start_9
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {p0, p1}, Lcom/baidu/sapi2/share/e;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 485
    .local v2, "obj":Lorg/json/JSONObject;
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 486
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 487
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 488
    .local v3, "uid":Ljava/lang/String;
    invoke-static {p0}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v4

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5}, Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;->fromJSONObject(Lorg/json/JSONObject;)Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Lcom/baidu/sapi2/d;->a(Ljava/lang/String;Lcom/baidu/sapi2/SapiAccount$ReloginCredentials;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_31} :catch_32

    goto :goto_16

    .line 491
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .end local v2    # "obj":Lorg/json/JSONObject;
    .end local v3    # "uid":Ljava/lang/String;
    :catch_32
    move-exception v0

    .line 492
    .local v0, "e":Ljava/lang/Throwable;
    invoke-static {v0}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_8
.end method

.method static c(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x0

    .line 196
    if-nez p0, :cond_4

    .line 211
    :cond_3
    :goto_3
    return v5

    .line 199
    :cond_4
    invoke-static {p0}, Lcom/baidu/sapi2/share/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 200
    .local v1, "callerPackageName":Ljava/lang/String;
    invoke-static {p0, v1}, Lcom/baidu/sapi2/share/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 201
    .local v2, "callerPackageSign":Ljava/lang/String;
    invoke-static {p0}, Lcom/baidu/sapi2/d;->a(Landroid/content/Context;)Lcom/baidu/sapi2/d;

    move-result-object v6

    invoke-virtual {v6}, Lcom/baidu/sapi2/d;->k()Ljava/util/Map;

    move-result-object v0

    .line 203
    .local v0, "authorizedPackages":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 204
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 205
    .local v4, "packageNamePattern":Ljava/lang/String;
    invoke-virtual {v1, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_28

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_28

    .line 207
    const/4 v5, 0x1

    goto :goto_3
.end method

.method static d(Landroid/content/Context;)Ljava/lang/String;
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 246
    const-string v0, ""

    .line 247
    .local v0, "callerPackageName":Ljava/lang/String;
    if-nez p0, :cond_6

    move-object v1, v0

    .line 258
    .end local v0    # "callerPackageName":Ljava/lang/String;
    .local v1, "callerPackageName":Ljava/lang/String;
    :goto_5
    return-object v1

    .line 251
    .end local v1    # "callerPackageName":Ljava/lang/String;
    .restart local v0    # "callerPackageName":Ljava/lang/String;
    :cond_6
    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 252
    .local v3, "packages":[Ljava/lang/String;
    array-length v4, v3

    if-lez v4, :cond_18

    .line 253
    const/4 v4, 0x0

    aget-object v0, v3, v4
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_18} :catch_1a

    .end local v3    # "packages":[Ljava/lang/String;
    :cond_18
    :goto_18
    move-object v1, v0

    .line 258
    .end local v0    # "callerPackageName":Ljava/lang/String;
    .restart local v1    # "callerPackageName":Ljava/lang/String;
    goto :goto_5

    .line 255
    .end local v1    # "callerPackageName":Ljava/lang/String;
    .restart local v0    # "callerPackageName":Ljava/lang/String;
    :catch_1a
    move-exception v2

    .line 256
    .local v2, "e":Ljava/lang/Throwable;
    invoke-static {v2}, Lcom/baidu/sapi2/utils/L;->e(Ljava/lang/Throwable;)V

    goto :goto_18
.end method

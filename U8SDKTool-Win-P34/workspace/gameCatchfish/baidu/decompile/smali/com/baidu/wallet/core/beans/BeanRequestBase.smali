.class public abstract Lcom/baidu/wallet/core/beans/BeanRequestBase;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "BeanRequestBase"


# instance fields
.field protected mBelongPaySdk:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/wallet/core/beans/BeanRequestBase;->mBelongPaySdk:Z

    return-void
.end method


# virtual methods
.method public abstract checkRequestValidity()Z
.end method

.method public abstract getRequestId()Ljava/lang/String;
.end method

.method public getSinalParam(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v0, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v0, ""

    :goto_a
    return-object v0

    :cond_b
    :try_start_b
    const-string v1, "&"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_12
    if-ge v0, v2, :cond_53

    aget-object v3, v1, v0

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4c

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4c

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_41

    const/4 v4, 0x0

    aget-object v4, v3, v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4c

    :cond_41
    array-length v4, v3

    if-le v4, v5, :cond_4c

    const/4 v0, 0x1

    aget-object v0, v3, v0

    invoke-static {v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_4a} :catch_4f

    move-result-object v0

    goto :goto_a

    :cond_4c
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :catch_4f
    move-exception v0

    const-string v0, ""

    goto :goto_a

    :cond_53
    const-string v0, ""

    goto :goto_a
.end method

.method protected setBelongPaySdk()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/core/beans/BeanRequestBase;->mBelongPaySdk:Z

    return-void
.end method

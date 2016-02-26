.class public final Lcom/baidu/wallet/core/utils/PassUtil;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/wallet/core/utils/PassUtil$PassNormalize;,
        Lcom/baidu/wallet/core/utils/PassUtil$IPassNormalize;
    }
.end annotation


# static fields
.field public static final NORMALIZE_URL:Ljava/lang/String; = "normalize_url"

.field public static final PASS_ACCOUNT:Ljava/lang/String; = "pass_account"

.field public static final PASS_ACCOUNT_TYPE:Ljava/lang/String; = "pass_account_type"

.field public static final PASS_AUTH_SID:Ljava/lang/String; = "pass_auth_sid"

.field public static final PASS_BDUSS:Ljava/lang/String; = "pass_bduss"

.field public static final PASS_DISPLAY_NAME:Ljava/lang/String; = "pass_display_name"

.field public static final PASS_ERROR_CODE:Ljava/lang/String; = "pass_error_code"

.field public static final PASS_ERROR_MSG:Ljava/lang/String; = "pass_error_msg"

.field public static final PASS_NEW_REQ:Ljava/lang/String; = "pass_new_req"

.field public static final PASS_PASSWORD:Ljava/lang/String; = "pass_code"

.field public static final PASS_PTOKEN:Ljava/lang/String; = "pass_ptoken"

.field public static final PASS_SID:Ljava/lang/String; = "pass_sid"

.field public static final PASS_STOKEN:Ljava/lang/String; = "pass_stoken"

.field public static final PASS_TYPE:Ljava/lang/String; = "pass_util_type"

.field public static final PASS_UBI:Ljava/lang/String; = "pass_ubi"

.field public static final PASS_UID:Ljava/lang/String; = "pass_uid"

.field public static final PASS_USER_NAEME:Ljava/lang/String; = "pass_user_name"

.field public static final TYPE_COMPLETED:I = 0x1

.field public static final TYPE_VERIFY:I = 0x2

.field static a:Lcom/baidu/wallet/core/utils/PassUtil$IPassNormalize;

.field private static b:J

.field private static c:Lcom/baidu/wallet/core/utils/PassUtil$IPassNormalize;

.field private static d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/baidu/wallet/core/utils/PassUtil;->b:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/wallet/core/utils/PassUtil;->d:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static backNormalized(Landroid/content/Context;ILjava/util/Map;)V
    .registers 7

    if-eqz p2, :cond_43

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "#value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/utils/LogUtil;->logd(Ljava/lang/String;)V

    goto :goto_a

    :cond_43
    sget-object v0, Lcom/baidu/wallet/core/utils/PassUtil;->c:Lcom/baidu/wallet/core/utils/PassUtil$IPassNormalize;

    if-eqz v0, :cond_4c

    sget-object v0, Lcom/baidu/wallet/core/utils/PassUtil;->c:Lcom/baidu/wallet/core/utils/PassUtil$IPassNormalize;

    invoke-interface {v0, p0, p1, p2}, Lcom/baidu/wallet/core/utils/PassUtil$IPassNormalize;->onNormalize(Landroid/content/Context;ILjava/util/Map;)Z

    :cond_4c
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/wallet/core/utils/PassUtil;->c:Lcom/baidu/wallet/core/utils/PassUtil$IPassNormalize;

    return-void
.end method

.method public static onCreate()V
    .registers 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/baidu/wallet/core/utils/PassUtil;->b:J

    return-void
.end method

.method public static registerPassNormalize(Lcom/baidu/wallet/core/utils/PassUtil$IPassNormalize;)V
    .registers 1

    sput-object p0, Lcom/baidu/wallet/core/utils/PassUtil;->a:Lcom/baidu/wallet/core/utils/PassUtil$IPassNormalize;

    return-void
.end method

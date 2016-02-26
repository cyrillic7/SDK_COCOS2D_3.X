.class public Lcom/baidu/bdgame/sdk/obf/lo;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static final a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .prologue
    .line 28
    invoke-static {p1}, Lcom/baidu/bdgame/sdk/obf/lo;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 29
    const/4 p1, 0x0

    .line 44
    :cond_7
    :goto_7
    return-object p1

    .line 32
    :cond_8
    :try_start_8
    const-string v0, "ACCESSTOKEN_PLACEHOLDER"

    .line 33
    const-string v0, "ACCESSTOKEN_PLACEHOLDER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 34
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    .line 38
    invoke-static {}, Lcom/baidu/bdgame/sdk/obf/k;->a()Lcom/baidu/bdgame/sdk/obf/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/bdgame/sdk/obf/k;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 39
    if-nez v0, :cond_1f

    const-string v0, ""

    .line 40
    :cond_1f
    const-string v1, "ACCESSTOKEN_PLACEHOLDER"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_24} :catch_26

    move-result-object p1

    goto :goto_7

    .line 41
    :catch_26
    move-exception v0

    .line 42
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public static a(Ljava/lang/String;)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 56
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 68
    :cond_7
    :goto_7
    return v0

    .line 59
    :cond_8
    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 60
    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 63
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/ju;->g:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 65
    const-string v2, "[^a-z0-9/+/-/.]"

    .line 66
    const-string v3, "javascript"

    .line 67
    const-string v4, ""

    invoke-virtual {v1, v2, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v0, 0x1

    goto :goto_7
.end method

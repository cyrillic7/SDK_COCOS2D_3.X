.class public Lcom/alipay/sdk/util/ActionUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .prologue
    .line 20
    const/16 v0, 0x28

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 21
    const/16 v1, 0x29

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 22
    if-eqz v0, :cond_13

    const/4 v2, -0x1

    if-ne v1, v2, :cond_15

    .line 23
    :cond_13
    const/4 v0, 0x0

    .line 36
    :goto_14
    return-object v0

    .line 25
    :cond_15
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 26
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 27
    if-eqz v1, :cond_4c

    .line 28
    const/4 v0, 0x0

    :goto_22
    array-length v2, v1

    if-ge v0, v2, :cond_4c

    .line 29
    aget-object v2, v1, v0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_49

    .line 30
    aget-object v2, v1, v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 31
    aget-object v2, v1, v0

    const-string v3, "\'"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 28
    :cond_49
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_4c
    move-object v0, v1

    .line 36
    goto :goto_14
.end method

.method public static b(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 42
    invoke-static {p0}, Lcom/alipay/sdk/util/ActionUtil;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 43
    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_b

    .line 56
    :cond_a
    :goto_a
    return-void

    .line 46
    :cond_b
    const-string v1, "tid"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 47
    invoke-static {}, Lcom/alipay/sdk/sys/GlobalContext;->a()Lcom/alipay/sdk/sys/GlobalContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/sdk/sys/GlobalContext;->b()Landroid/content/Context;

    move-result-object v1

    .line 48
    invoke-static {}, Lcom/alipay/sdk/tid/TidInfo;->c()Lcom/alipay/sdk/tid/TidInfo;

    move-result-object v2

    .line 49
    aget-object v3, v0, v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    aget-object v3, v0, v5

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 52
    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Lcom/alipay/sdk/tid/TidInfo;->a(Ljava/lang/String;)V

    .line 53
    aget-object v0, v0, v5

    invoke-virtual {v2, v0}, Lcom/alipay/sdk/tid/TidInfo;->b(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v2, v1}, Lcom/alipay/sdk/tid/TidInfo;->a(Landroid/content/Context;)V

    goto :goto_a
.end method

.class public Lcom/baidu/bdgame/sdk/obf/bc;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/bb;
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 12
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/kw;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/bd;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 14
    if-eqz v1, :cond_14

    if-eqz v2, :cond_14

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 27
    :cond_13
    :goto_13
    return-object v0

    .line 17
    :cond_14
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/bd;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 19
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/bd;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_13

    .line 22
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/bb;

    invoke-direct {v0}, Lcom/baidu/bdgame/sdk/obf/bb;-><init>()V

    .line 23
    invoke-virtual {v0, v1}, Lcom/baidu/bdgame/sdk/obf/bb;->a(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v2}, Lcom/baidu/bdgame/sdk/obf/bb;->b(Ljava/lang/String;)V

    goto :goto_13
.end method

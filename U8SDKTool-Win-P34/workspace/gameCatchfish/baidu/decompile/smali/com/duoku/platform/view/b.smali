.class public Lcom/duoku/platform/view/b;
.super Lcom/duoku/platform/view/a;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/duoku/platform/view/a;-><init>(Landroid/content/Context;)V

    .line 46
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 1

    .prologue
    .line 69
    return-void
.end method

.method public a(Lcom/duoku/platform/c/b;Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 57
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 51
    return-void
.end method

.method protected b()V
    .registers 1

    .prologue
    .line 74
    return-void
.end method

.method protected b(Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 201
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 202
    if-eqz v0, :cond_e

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 204
    :cond_e
    iget-object v0, p0, Lcom/duoku/platform/view/b;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/b;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/b;->f:Landroid/content/Context;

    const-string v3, "dk_password_null"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 219
    :goto_25
    const/4 v0, 0x0

    :goto_26
    return v0

    .line 207
    :cond_27
    const-string v1, " "

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 209
    const-string v1, "([a-z]|[A-Z]|[0-9])+"

    .line 210
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 211
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 213
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-lt v1, v2, :cond_50

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x10

    if-gt v0, v1, :cond_50

    .line 214
    const/4 v0, 0x1

    goto :goto_26

    .line 216
    :cond_50
    iget-object v0, p0, Lcom/duoku/platform/view/b;->f:Landroid/content/Context;

    iget-object v1, p0, Lcom/duoku/platform/view/b;->f:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/duoku/platform/view/b;->f:Landroid/content/Context;

    const-string v3, "dk_pwd_error"

    invoke-static {v2, v3}, Lcom/duoku/platform/util/m;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/duoku/platform/util/p;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_25
.end method

.method protected c(Ljava/lang/String;)I
    .registers 3

    .prologue
    .line 227
    iget-object v0, p0, Lcom/duoku/platform/view/b;->f:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/duoku/platform/util/m;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected c()V
    .registers 2

    .prologue
    .line 223
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->b()V

    .line 224
    return-void
.end method

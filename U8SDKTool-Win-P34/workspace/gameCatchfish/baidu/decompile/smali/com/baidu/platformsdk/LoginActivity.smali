.class public Lcom/baidu/platformsdk/LoginActivity;
.super Lcom/baidu/platformsdk/LoginWatchActivity;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/platformsdk/LoginActivity$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "bundle_key_autologin"

.field private static b:S


# instance fields
.field private c:Lcom/baidu/bdgame/sdk/obf/ce;

.field private f:Lcom/baidu/platformsdk/LoginActivity$a;

.field private g:Lcom/baidu/bdgame/sdk/obf/kb;

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 48
    const/4 v0, 0x0

    sput-short v0, Lcom/baidu/platformsdk/LoginActivity;->b:S

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/platformsdk/LoginActivity;->h:Z

    .line 331
    return-void
.end method

.method private a(Landroid/content/res/Configuration;)V
    .registers 7

    .prologue
    const/4 v2, -0x1

    const/4 v4, -0x2

    .line 241
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_36

    .line 242
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 243
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/lj;->b(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "bdp_account_activity_land_padding"

    invoke-static {p0, v3}, Lcom/baidu/bdgame/sdk/obf/kq;->f(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 245
    if-nez v0, :cond_33

    .line 246
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v1, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 250
    :goto_2b
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 260
    :cond_32
    :goto_32
    return-void

    .line 248
    :cond_33
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_2b

    .line 251
    :cond_36
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    .line 252
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 253
    if-nez v0, :cond_52

    .line 254
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0, v2, v4}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 258
    :goto_4a
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_32

    .line 256
    :cond_52
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_4a
.end method

.method static synthetic a(Lcom/baidu/platformsdk/LoginActivity;)V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->c()V

    return-void
.end method

.method public static b()V
    .registers 1

    .prologue
    .line 322
    const/4 v0, 0x0

    sput-short v0, Lcom/baidu/platformsdk/LoginActivity;->b:S

    .line 323
    return-void
.end method

.method static synthetic b(Lcom/baidu/platformsdk/LoginActivity;)V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->d()V

    return-void
.end method

.method private c()V
    .registers 2

    .prologue
    .line 110
    new-instance v0, Lcom/baidu/platformsdk/LoginActivity$2;

    invoke-direct {v0, p0}, Lcom/baidu/platformsdk/LoginActivity$2;-><init>(Lcom/baidu/platformsdk/LoginActivity;)V

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/bl;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/n;)V

    .line 139
    return-void
.end method

.method static synthetic c(Lcom/baidu/platformsdk/LoginActivity;)V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->f()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/platformsdk/LoginActivity;)Lcom/baidu/bdgame/sdk/obf/kb;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->g:Lcom/baidu/bdgame/sdk/obf/kb;

    return-object v0
.end method

.method private d()V
    .registers 6

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 146
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bl;->c(Landroid/content/Context;)I

    move-result v0

    .line 147
    if-ne v0, v4, :cond_31

    .line 148
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/bc;->a(Landroid/content/Context;)Lcom/baidu/bdgame/sdk/obf/bb;

    move-result-object v0

    .line 149
    if-eqz v0, :cond_2d

    .line 151
    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bb;->b()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/platformsdk/LoginActivity$3;

    invoke-direct {v3, p0}, Lcom/baidu/platformsdk/LoginActivity$3;-><init>(Lcom/baidu/platformsdk/LoginActivity;)V

    invoke-static {p0, v1, v2, v3}, Lcom/baidu/bdgame/sdk/obf/bl;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;

    move-result-object v1

    .line 172
    iget-object v2, p0, Lcom/baidu/platformsdk/LoginActivity;->g:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/bb;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v4, v0, v1}, Lcom/baidu/bdgame/sdk/obf/kb;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/bk;)V

    .line 208
    :goto_2c
    return-void

    .line 174
    :cond_2d
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->c()V

    goto :goto_2c

    .line 176
    :cond_31
    if-ne v0, v3, :cond_52

    .line 177
    sget-object v0, Lcom/baidu/bdgame/sdk/obf/ju;->h:Ljava/lang/String;

    .line 178
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 180
    sget-object v1, Lcom/baidu/bdgame/sdk/obf/ju;->i:Ljava/lang/String;

    new-instance v2, Lcom/baidu/platformsdk/LoginActivity$4;

    invoke-direct {v2, p0}, Lcom/baidu/platformsdk/LoginActivity$4;-><init>(Lcom/baidu/platformsdk/LoginActivity;)V

    invoke-static {p0, v1, v0, v2}, Lcom/baidu/bdgame/sdk/obf/bl;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/baidu/bdgame/sdk/obf/n;)Lcom/baidu/bdgame/sdk/obf/bk;

    move-result-object v0

    .line 201
    iget-object v1, p0, Lcom/baidu/platformsdk/LoginActivity;->g:Lcom/baidu/bdgame/sdk/obf/kb;

    sget-object v2, Lcom/baidu/bdgame/sdk/obf/ju;->i:Ljava/lang/String;

    invoke-virtual {v1, v3, v2, v0}, Lcom/baidu/bdgame/sdk/obf/kb;->a(ILjava/lang/String;Lcom/baidu/bdgame/sdk/obf/bk;)V

    goto :goto_2c

    .line 203
    :cond_4e
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->c()V

    goto :goto_2c

    .line 206
    :cond_52
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->c()V

    goto :goto_2c
.end method

.method static synthetic e(Lcom/baidu/platformsdk/LoginActivity;)Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ce;

    return-object v0
.end method

.method private e()V
    .registers 2

    .prologue
    .line 234
    iget-boolean v0, p0, Lcom/baidu/platformsdk/LoginActivity;->h:Z

    if-nez v0, :cond_a

    .line 235
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/platformsdk/LoginActivity;->h:Z

    .line 236
    const/4 v0, 0x0

    sput-short v0, Lcom/baidu/platformsdk/LoginActivity;->b:S

    .line 238
    :cond_a
    return-void
.end method

.method private f()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 264
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bs;->a(I)Lcom/baidu/bdgame/sdk/obf/bs;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/bv;->a(Landroid/content/Context;Lcom/baidu/bdgame/sdk/obf/bs;)V

    .line 266
    invoke-static {p0}, Lcom/baidu/bdgame/sdk/obf/bl;->c(Landroid/content/Context;)I

    move-result v0

    .line 267
    packed-switch v0, :pswitch_data_38

    .line 280
    :goto_10
    return-void

    .line 269
    :pswitch_11
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ce;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/lc;

    iget-object v2, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/lc;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    invoke-virtual {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/ce;->b(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    goto :goto_10

    .line 272
    :pswitch_1e
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ce;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/ja;

    iget-object v2, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/ja;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    invoke-virtual {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/ce;->b(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    goto :goto_10

    .line 275
    :pswitch_2b
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ce;

    new-instance v1, Lcom/baidu/bdgame/sdk/obf/md;

    iget-object v2, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v1, v2}, Lcom/baidu/bdgame/sdk/obf/md;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    invoke-virtual {v0, v1, v3}, Lcom/baidu/bdgame/sdk/obf/ce;->b(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    goto :goto_10

    .line 267
    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_11
        :pswitch_2b
        :pswitch_1e
    .end packed-switch
.end method

.method private g()V
    .registers 4

    .prologue
    .line 286
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 287
    const-string v1, "intent_key_callback_result_code"

    const/16 v2, -0x3ea

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 288
    const-string v1, "intent_key_callback_result_desc"

    const-string v2, "bdp_passport_login_cancel"

    invoke-static {p0, v2}, Lcom/baidu/bdgame/sdk/obf/kq;->b(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/baidu/platformsdk/LoginActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 290
    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Lcom/baidu/platformsdk/LoginActivity;->setResult(ILandroid/content/Intent;)V

    .line 291
    return-void
.end method


# virtual methods
.method public a()Lcom/baidu/bdgame/sdk/obf/ce;
    .registers 2

    .prologue
    .line 338
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ce;

    return-object v0
.end method

.method public a(Lcom/baidu/platformsdk/LoginActivity$a;)V
    .registers 2

    .prologue
    .line 314
    iput-object p1, p0, Lcom/baidu/platformsdk/LoginActivity;->f:Lcom/baidu/platformsdk/LoginActivity$a;

    .line 315
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0, p1, p2, p3}, Lcom/baidu/bdgame/sdk/obf/ce;->a(IILandroid/content/Intent;)V

    .line 303
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->f:Lcom/baidu/platformsdk/LoginActivity$a;

    if-eqz v0, :cond_11

    .line 304
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->f:Lcom/baidu/platformsdk/LoginActivity$a;

    invoke-interface {v0, p1, p2, p3}, Lcom/baidu/platformsdk/LoginActivity$a;->a(IILandroid/content/Intent;)V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->f:Lcom/baidu/platformsdk/LoginActivity$a;

    .line 307
    :cond_11
    return-void
.end method

.method public onBackPressed()V
    .registers 2

    .prologue
    .line 295
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->c()Z

    move-result v0

    if-nez v0, :cond_b

    .line 296
    invoke-super {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->onBackPressed()V

    .line 298
    :cond_b
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 212
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/baidu/platformsdk/LoginActivity;->a(Landroid/content/res/Configuration;)V

    .line 214
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/ce;->d()V

    .line 215
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 59
    invoke-super {p0, p1}, Lcom/baidu/platformsdk/LoginWatchActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->g()V

    .line 62
    sget-short v0, Lcom/baidu/platformsdk/LoginActivity;->b:S

    if-eqz v0, :cond_11

    .line 63
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->finish()V

    .line 104
    :goto_10
    return-void

    .line 66
    :cond_11
    sput-short v2, Lcom/baidu/platformsdk/LoginActivity;->b:S

    .line 67
    iput-boolean v3, p0, Lcom/baidu/platformsdk/LoginActivity;->h:Z

    .line 68
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_1e

    .line 69
    invoke-virtual {p0, v3}, Lcom/baidu/platformsdk/LoginActivity;->setFinishOnTouchOutside(Z)V

    .line 71
    :cond_1e
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const-string v1, "bdp_blank"

    invoke-static {p0, v1}, Lcom/baidu/bdgame/sdk/obf/kq;->e(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/baidu/platformsdk/LoginActivity;->setContentView(Landroid/view/View;)V

    .line 73
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/baidu/platformsdk/LoginActivity;->a(Landroid/content/res/Configuration;)V

    .line 74
    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {p0, v0}, Lcom/baidu/bdgame/sdk/obf/ce;->a(Landroid/app/Activity;Landroid/view/ViewGroup;)Lcom/baidu/bdgame/sdk/obf/ce;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ce;

    .line 76
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "bundle_key_autologin"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 77
    if-eqz v0, :cond_7a

    .line 79
    new-instance v0, Lcom/baidu/bdgame/sdk/obf/kb;

    iget-object v1, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ce;

    invoke-direct {v0, v1}, Lcom/baidu/bdgame/sdk/obf/kb;-><init>(Lcom/baidu/bdgame/sdk/obf/ce;)V

    iput-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->g:Lcom/baidu/bdgame/sdk/obf/kb;

    .line 80
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->c:Lcom/baidu/bdgame/sdk/obf/ce;

    iget-object v1, p0, Lcom/baidu/platformsdk/LoginActivity;->g:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-virtual {v0, v1, v4}, Lcom/baidu/bdgame/sdk/obf/ce;->b(Lcom/baidu/bdgame/sdk/obf/cd;Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/baidu/platformsdk/LoginActivity;->g:Lcom/baidu/bdgame/sdk/obf/kb;

    invoke-virtual {v0}, Lcom/baidu/bdgame/sdk/obf/kb;->f()V

    .line 82
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/bdgame/sdk/obf/bl;->c(Landroid/content/Context;)I

    move-result v0

    if-nez v0, :cond_71

    .line 84
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->c()V

    goto :goto_10

    .line 86
    :cond_71
    new-instance v0, Lcom/baidu/platformsdk/LoginActivity$1;

    invoke-direct {v0, p0}, Lcom/baidu/platformsdk/LoginActivity$1;-><init>(Lcom/baidu/platformsdk/LoginActivity;)V

    invoke-static {p0, v2, v0}, Lcom/baidu/bdgame/sdk/obf/bl;->c(Landroid/content/Context;ILcom/baidu/bdgame/sdk/obf/n;)V

    goto :goto_10

    .line 102
    :cond_7a
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->f()V

    goto :goto_10
.end method

.method protected onDestroy()V
    .registers 1

    .prologue
    .line 229
    invoke-super {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->onDestroy()V

    .line 230
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->e()V

    .line 231
    return-void
.end method

.method protected onPause()V
    .registers 2

    .prologue
    .line 221
    invoke-super {p0}, Lcom/baidu/platformsdk/LoginWatchActivity;->onPause()V

    .line 222
    invoke-virtual {p0}, Lcom/baidu/platformsdk/LoginActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 223
    invoke-direct {p0}, Lcom/baidu/platformsdk/LoginActivity;->e()V

    .line 225
    :cond_c
    return-void
.end method

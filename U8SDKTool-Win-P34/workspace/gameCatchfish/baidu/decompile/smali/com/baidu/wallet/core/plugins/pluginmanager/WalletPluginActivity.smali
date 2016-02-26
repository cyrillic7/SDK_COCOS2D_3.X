.class public Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;
.super Lcom/baidu/wallet/core/BaseActivity;

# interfaces
.implements Lcom/baidu/wallet/core/plugins/pluginmanager/a;


# static fields
.field public static final INTENT_ACTIVITY_REQUEST_ID:Ljava/lang/String; = "start activity request id "

.field private static final b:Ljava/lang/String;


# instance fields
.field a:Ljava/text/DecimalFormat;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Lcom/baidu/wallet/core/plugins/pluginfake/a;

.field private g:Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;

.field private h:I

.field private i:I

.field private j:Z

.field private k:Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

.field private l:Landroid/widget/ProgressBar;

.field private m:Landroid/widget/RelativeLayout;

.field private n:Lcom/baidu/wallet/base/widget/NetImageView;

.field private o:Landroid/widget/TextView;

.field private p:Landroid/widget/TextView;

.field private q:Landroid/widget/TextView;

.field private volatile r:Z

.field private s:Landroid/widget/RelativeLayout;

.field private t:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/baidu/wallet/core/BaseActivity;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->e:I

    iput-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->g:Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;

    iput v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->h:I

    iput v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->i:I

    iput-boolean v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->j:Z

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "######0.00"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->a:Ljava/text/DecimalFormat;

    iput-boolean v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->r:Z

    iput-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->t:Landroid/os/Bundle;

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;)Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;
    .registers 2

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->k:Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    return-object p1
.end method

.method static synthetic a(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method private a()V
    .registers 5

    const/4 v3, -0x1

    iget-boolean v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->j:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->finishWithoutAnim()V

    :cond_8
    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->f:Lcom/baidu/wallet/core/plugins/pluginfake/a;

    instance-of v1, v1, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeActivity;

    if-eqz v1, :cond_3d

    iget v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->h:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2a

    const-class v1, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyActivity2;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->e:I

    if-eq v1, v3, :cond_26

    iget v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->e:I

    invoke-virtual {p0, v0, v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_25
    :goto_25
    return-void

    :cond_26
    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_25

    :cond_2a
    const-class v1, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->e:I

    if-eq v1, v3, :cond_39

    iget v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->e:I

    invoke-virtual {p0, v0, v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_25

    :cond_39
    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_25

    :cond_3d
    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->f:Lcom/baidu/wallet/core/plugins/pluginfake/a;

    instance-of v1, v1, Lcom/baidu/wallet/core/plugins/pluginfake/PluginFakeIntentService;

    if-eqz v1, :cond_25

    const-class v1, Lcom/baidu/wallet/core/plugins/pluginproxy/WalletProxyIntentService;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_25
.end method

.method static synthetic b(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->k:Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    return-object v0
.end method

.method private b()V
    .registers 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_30

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/baidu/wallet/core/plugins/pluginfake/a;

    if-eqz v1, :cond_30

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginfake/a;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->f:Lcom/baidu/wallet/core/plugins/pluginfake/a;

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->a()V
    :try_end_30
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_30} :catch_31
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_30} :catch_39
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_30} :catch_41

    :cond_30
    :goto_30
    return-void

    :catch_31
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->finish()V

    goto :goto_30

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InstantiationException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->finish()V

    goto :goto_30

    :catch_41
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->finish()V

    goto :goto_30
.end method

.method private c()V
    .registers 5

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    move-result-object v0

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->g:Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->g:Lcom/baidu/wallet/core/plugins/pluginfake/Plugin;

    if-nez v0, :cond_2b

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(ZLandroid/content/Context;Ljava/lang/String;)V

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContextWrapper;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginfake/a;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->f:Lcom/baidu/wallet/core/plugins/pluginfake/a;

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->f:Lcom/baidu/wallet/core/plugins/pluginfake/a;

    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->a()V

    goto :goto_2a
.end method

.method static synthetic c(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->g()V

    return-void
.end method

.method static synthetic d(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->s:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private d()V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ContextWrapper;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginfake/a;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->f:Lcom/baidu/wallet/core/plugins/pluginfake/a;

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->a()V

    return-void
.end method

.method static synthetic e(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->m:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private e()V
    .registers 3

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "progress"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "progress_layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->m:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "plugin_image"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/NetImageView;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->n:Lcom/baidu/wallet/base/widget/NetImageView;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "plugin_name"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->o:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "download_info"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->p:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "download_speed"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->q:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->s:Landroid/widget/RelativeLayout;

    return-void
.end method

.method private f()V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    if-eqz v0, :cond_34

    iget-object v1, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->icon_url:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_25

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->n:Lcom/baidu/wallet/base/widget/NetImageView;

    iget-object v2, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->icon_url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/baidu/wallet/base/widget/NetImageView;->setImageUrl(Ljava/lang/String;)V

    :cond_25
    iget-object v1, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->o:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_34
    return-void
.end method

.method private g()V
    .registers 3

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->k:Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->k:Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    new-instance v1, Lcom/baidu/wallet/core/plugins/pluginmanager/b;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/b;-><init>(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_e
    return-void
.end method


# virtual methods
.method public createDialog()V
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/baidu/wallet/core/plugins/pluginmanager/d;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/d;-><init>(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getPluginName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateDialog()Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->k:Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    return-object v0
.end method

.method public initActionBar(Ljava/lang/String;)V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "bdactionbar"

    invoke-static {v0, v1}, Lcom/baidu/wallet/core/utils/ResUtils;->id(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/base/widget/BdActionBar;

    if-eqz v0, :cond_29

    invoke-static {p0, p1}, Lcom/baidu/wallet/core/utils/ResUtils;->string(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitle(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitleAlignment(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setTitleColor(I)V

    new-instance v1, Lcom/baidu/wallet/core/plugins/pluginmanager/c;

    invoke-direct {v1, p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/c;-><init>(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)V

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/base/widget/BdActionBar;->setLeftZoneOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_29
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    iget v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->e:I

    if-ne p1, v0, :cond_7

    invoke-virtual {p0, p2, p3}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->setResult(ILandroid/content/Intent;)V

    :cond_7
    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->finishWithoutAnim()V

    return-void
.end method

.method public onAttachedToWindow()V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->r:Z

    iget v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->i:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1a

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->t:Landroid/os/Bundle;

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;)V

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->c()V

    :cond_1a
    invoke-super {p0}, Lcom/baidu/wallet/core/BaseActivity;->onAttachedToWindow()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.baidu.paysdk.core.plugins.COMPONENT_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->c:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.baidu.paysdk.core.plugins.PACKAGE_NAME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.baidu.paysdk.core.plugins.PLUGIN_LOAD_FLAG"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->i:I

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "start activity request id "

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->e:I

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.baidu.paysdk.core.plugins.PLUGIN_IS_FOR_RESULT"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->j:Z

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->t:Landroid/os/Bundle;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->requestWindowFeature(I)Z

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_54

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->t:Landroid/os/Bundle;

    if-eqz v0, :cond_5b

    iget-boolean v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->j:Z

    if-nez v0, :cond_5b

    :cond_54
    invoke-super {p0, p1}, Lcom/baidu/wallet/core/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->finish()V

    :cond_5a
    :goto_5a
    return-void

    :cond_5b
    invoke-super {p0, p1}, Lcom/baidu/wallet/core/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->t:Landroid/os/Bundle;

    if-nez v0, :cond_5a

    iget v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->i:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6b

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->b()V

    goto :goto_5a

    :cond_6b
    const-string v0, "wallet_base_pluginl_detail"

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/ResUtils;->layout(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->setContentView(I)V

    const-string v0, "bd_wallet_plugin_title"

    invoke-virtual {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->initActionBar(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->e()V

    goto :goto_5a
.end method

.method public onDetachedFromWindow()V
    .registers 2

    invoke-super {p0}, Lcom/baidu/wallet/core/BaseActivity;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->r:Z

    return-void
.end method

.method public onDownLoadStart(Ljava/lang/String;Z)V
    .registers 5

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    if-nez p2, :cond_12

    const-string v0, ""

    invoke-static {p0, v1, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    goto :goto_9

    :cond_12
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->f()V

    goto :goto_9
.end method

.method public onDownloadFailure(Ljava/lang/String;Z)V
    .registers 4

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    :goto_13
    return-void

    :cond_14
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->finishWithoutAnim()V

    goto :goto_13
.end method

.method public onDownloadOngoing(Ljava/lang/String;Lcom/baidu/wallet/core/b/b;Z)V
    .registers 15

    const/high16 v10, 0x49800000

    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_d

    :cond_c
    :goto_c
    return-void

    :cond_d
    if-eqz p3, :cond_c

    iget-boolean v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->r:Z

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->s:Landroid/widget/RelativeLayout;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->s:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_21
    invoke-virtual {p2}, Lcom/baidu/wallet/core/b/b;->c()J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-lez v4, :cond_38

    iget-object v4, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->l:Landroid/widget/ProgressBar;

    invoke-virtual {p2}, Lcom/baidu/wallet/core/b/b;->b()J

    move-result-wide v6

    const-wide/16 v8, 0x64

    mul-long/2addr v6, v8

    div-long v2, v6, v2

    long-to-int v2, v2

    invoke-virtual {v4, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_38
    :try_start_38
    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->q:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->a:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Lcom/baidu/wallet/core/b/b;->e()J

    move-result-wide v6

    long-to-float v5, v6

    const/high16 v6, 0x44800000

    div-float/2addr v5, v6

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "KB/S"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->p:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color=\'#3593dc\'>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->a:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Lcom/baidu/wallet/core/b/b;->b()J

    move-result-wide v6

    long-to-float v5, v6

    div-float/2addr v5, v10

    float-to-double v6, v5

    invoke-virtual {v4, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "MB</font>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<font color=\'#555555\'>/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->a:Ljava/text/DecimalFormat;

    invoke-virtual {p2}, Lcom/baidu/wallet/core/b/b;->c()J

    move-result-wide v6

    cmp-long v5, v6, v0

    if-lez v5, :cond_97

    invoke-virtual {p2}, Lcom/baidu/wallet/core/b/b;->c()J

    move-result-wide v0

    :cond_97
    long-to-float v0, v0

    div-float/2addr v0, v10

    float-to-double v0, v0

    invoke-virtual {v4, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "MB</font>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_b3} :catch_b5

    goto/16 :goto_c

    :catch_b5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_c
.end method

.method public onLoadFailure(Ljava/lang/String;ZZ)V
    .registers 6

    if-nez p3, :cond_f

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->b(Ljava/lang/String;)V

    :cond_f
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18

    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->k:Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->k:Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->k:Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->dismiss()V

    :cond_29
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->finishWithoutAnim()V

    goto :goto_17
.end method

.method public onLoadOngoing(Ljava/lang/String;Z)V
    .registers 4

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_8
    return-void
.end method

.method public onLoadSuccess(Ljava/lang/String;ZZ)V
    .registers 5

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->k:Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->k:Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->k:Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/widgets/UpdatePluginDialog;->dismiss()V

    :cond_11
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeDismissDialog(Lcom/baidu/wallet/core/BaseActivity;I)V

    iget-boolean v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->r:Z

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_31

    :cond_25
    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->b(Ljava/lang/String;)V

    :cond_30
    :goto_30
    return-void

    :cond_31
    if-nez p3, :cond_44

    invoke-virtual {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/plugins/pluginmanager/g;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/wallet/core/plugins/pluginmanager/g;->b(Ljava/lang/String;)V

    if-eqz p2, :cond_30

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d()V

    goto :goto_30

    :cond_44
    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->d()V

    goto :goto_30
.end method

.method public showDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/baidu/wallet/core/plugins/pluginmanager/e;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/baidu/wallet/core/plugins/pluginmanager/e;-><init>(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showFailDialogStyle(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V
    .registers 6

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/baidu/wallet/core/plugins/pluginmanager/f;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/baidu/wallet/core/plugins/pluginmanager/f;-><init>(Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;Landroid/view/View$OnClickListener;ZLandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

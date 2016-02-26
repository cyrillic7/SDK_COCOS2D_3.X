.class public Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/baidu/wallet/core/c/a$a;


# static fields
.field private static final a:Ljava/lang/String;


# instance fields
.field private b:Lcom/baidu/wallet/core/c/a;

.field private c:Ljava/lang/String;

.field private d:Landroid/content/Context;

.field private e:Lcom/baidu/wallet/core/b/a$b;

.field private f:Landroid/view/View$OnClickListener;

.field private g:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/wallet/core/c/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/l;-><init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->e:Lcom/baidu/wallet/core/b/a$b;

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/m;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/m;-><init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->f:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/k;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/k;-><init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->g:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->d:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->c:Ljava/lang/String;

    iput-object p3, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->b:Lcom/baidu/wallet/core/c/a;

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->f:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic b(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->g:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method private b()V
    .registers 8

    const/4 v6, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getmUpdatePluginDatas()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    if-eqz v2, :cond_53

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/wallet/core/b/a;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->c:Ljava/lang/String;

    iget-object v2, v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->url:Ljava/lang/String;

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/wallet/core/b/a;->a(Ljava/lang/String;Ljava/lang/String;ZZZ)J

    move-result-wide v2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/wallet/core/b/a;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->d:Landroid/content/Context;

    iget-object v4, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->e:Lcom/baidu/wallet/core/b/a$b;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/wallet/core/b/a;->a(Landroid/content/Context;JLcom/baidu/wallet/core/b/a$b;)V

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_52

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v6}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->onDownLoadStart(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->d:Landroid/content/Context;

    const-string v5, "2"

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->updateDownloadId(Ljava/lang/String;JLandroid/content/Context;Ljava/lang/String;)V

    :cond_52
    :goto_52
    return-void

    :cond_53
    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v6, v3}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->onLoadFailure(Ljava/lang/String;ZZ)V

    goto :goto_52
.end method

.method static synthetic c(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->c:Ljava/lang/String;

    return-object v0
.end method

.method private c()V
    .registers 5

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getmUpdatePluginDatas()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    if-nez v0, :cond_36

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v1

    invoke-virtual {v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/baidu/wallet/core/utils/GlobalUtils;->safeShowDialog(Lcom/baidu/wallet/core/BaseActivity;ILjava/lang/String;)V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->d:Landroid/content/Context;

    new-instance v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/n;

    invoke-direct {v2, p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/n;-><init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)V

    invoke-virtual {v0, v1, v2}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getPluginConfigFromServer(Landroid/content/Context;Lcom/baidu/wallet/core/beans/IBeanResponseCallback;)V

    :goto_35
    return-void

    :cond_36
    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->createDialog()V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->f:Landroid/view/View$OnClickListener;

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->g:Landroid/view/View$OnClickListener;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->showDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    goto :goto_35
.end method

.method static synthetic d(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->d:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic e(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)Lcom/baidu/wallet/core/c/a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->b:Lcom/baidu/wallet/core/c/a;

    return-object v0
.end method

.method static synthetic f(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->b()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/o;->c()V

    return-void
.end method

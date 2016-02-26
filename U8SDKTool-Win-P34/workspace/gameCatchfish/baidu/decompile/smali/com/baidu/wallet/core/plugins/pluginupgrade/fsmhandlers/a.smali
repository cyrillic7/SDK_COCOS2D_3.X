.class public Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;
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

    const-class v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/wallet/core/c/a;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/f;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/f;-><init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->e:Lcom/baidu/wallet/core/b/a$b;

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/g;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/g;-><init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->f:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/h;

    invoke-direct {v0, p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/h;-><init>(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;)V

    iput-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->g:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->b:Lcom/baidu/wallet/core/c/a;

    iput-object p2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->d:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getmUpdatePluginDatas()Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_1e

    iget-wide v0, v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->pluginDownloadId:J

    :goto_14
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_1d

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->a(Ljava/lang/String;J)V

    :cond_1d
    return-void

    :cond_1e
    move-wide v0, v2

    goto :goto_14
.end method

.method private a(Ljava/lang/String;J)V
    .registers 10

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    const-wide/16 v2, -0x1

    iget-object v4, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->d:Landroid/content/Context;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->updateDownloadId(Ljava/lang/String;JLandroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/wallet/core/b/a;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/b/a;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lcom/baidu/wallet/core/b/a;->a(J)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/wallet/core/b/a;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->e:Lcom/baidu/wallet/core/b/a$b;

    invoke-virtual {v0, v1, p2, p3, v2}, Lcom/baidu/wallet/core/b/a;->b(Landroid/content/Context;JLcom/baidu/wallet/core/b/a$b;)V

    return-void
.end method

.method private a(Z)V
    .registers 10

    const/4 v3, 0x0

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getmUpdatePluginDatas()Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    if-eqz v2, :cond_52

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/wallet/core/b/a;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->c:Ljava/lang/String;

    iget-object v2, v2, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;->url:Ljava/lang/String;

    const/4 v4, 0x1

    move v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/wallet/core/b/a;->a(Ljava/lang/String;Ljava/lang/String;ZZZ)J

    move-result-wide v6

    const-wide/16 v0, -0x1

    cmp-long v0, v6, v0

    if-eqz v0, :cond_51

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->onDownLoadStart(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->d:Landroid/content/Context;

    const/4 v5, 0x0

    move-wide v2, v6

    invoke-virtual/range {v0 .. v5}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->updateDownloadId(Ljava/lang/String;JLandroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/wallet/core/b/a;->a(Landroid/content/Context;)Lcom/baidu/wallet/core/b/a;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->d:Landroid/content/Context;

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->e:Lcom/baidu/wallet/core/b/a$b;

    invoke-virtual {v0, v1, v6, v7, v2}, Lcom/baidu/wallet/core/b/a;->a(Landroid/content/Context;JLcom/baidu/wallet/core/b/a$b;)V

    :cond_51
    :goto_51
    return-void

    :cond_52
    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v3}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->onLoadFailure(Ljava/lang/String;ZZ)V

    goto :goto_51
.end method

.method static synthetic b(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->d:Landroid/content/Context;

    return-object v0
.end method

.method private b()V
    .registers 8

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getmUpdatePluginDatas()Ljava/util/HashMap;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginData;

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->d:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/wallet/core/utils/NetworkUtils;->isWifiNetworkAvailable(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-direct {p0, v5}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->a(Z)V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a(ZLandroid/content/Context;Ljava/lang/String;ZZLcom/baidu/wallet/core/plugins/pluginmanager/a;)V

    :goto_31
    return-void

    :cond_32
    if-eqz v0, :cond_5d

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->isIgnorePluginUpdate(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5d

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->createDialog()V

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->f:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2, v3, v1}, Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;->showDialog(Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Z)V

    goto :goto_31

    :cond_5d
    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a()Lcom/baidu/wallet/core/plugins/pluginmanager/h;

    move-result-object v0

    iget-object v2, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->d:Landroid/content/Context;

    iget-object v3, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->c:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getInstance()Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;

    move-result-object v4

    invoke-virtual {v4}, Lcom/baidu/wallet/core/plugins/pluginupgrade/PluginUpgradeUtils;->getCurrentContext()Lcom/baidu/wallet/core/plugins/pluginmanager/WalletPluginActivity;

    move-result-object v6

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Lcom/baidu/wallet/core/plugins/pluginmanager/h;->a(ZLandroid/content/Context;Ljava/lang/String;ZZLcom/baidu/wallet/core/plugins/pluginmanager/a;)V

    goto :goto_31
.end method

.method static synthetic c(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;)Lcom/baidu/wallet/core/c/a;
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->b:Lcom/baidu/wallet/core/c/a;

    return-object v0
.end method

.method private c()V
    .registers 2

    iget-object v0, p0, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->c:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;)V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->c()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-direct {p0}, Lcom/baidu/wallet/core/plugins/pluginupgrade/fsmhandlers/a;->b()V

    return-void
.end method

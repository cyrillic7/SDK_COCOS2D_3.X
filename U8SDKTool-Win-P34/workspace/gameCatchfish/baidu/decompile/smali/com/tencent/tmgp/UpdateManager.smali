.class public Lcom/tencent/tmgp/UpdateManager;
.super Landroid/app/Service;
.source "UpdateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/tmgp/UpdateManager$downloadApkThread;
    }
.end annotation


# static fields
.field private static final DOWNLOAD:I = 0x1

.field private static final DOWNLOADFAIL:I = 0x3

.field private static final DOWNLOAD_FINISH:I = 0x2


# instance fields
.field private cancelUpdate:Z

.field private game:Lcom/tencent/tmgp/GameCatchFish;

.field private mDownloadDialog:Landroid/app/Dialog;

.field private mHandler:Landroid/os/Handler;

.field mHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mProgress:Landroid/widget/ProgressBar;

.field private mSavePath:Ljava/lang/String;

.field private progress:I

.field private updateProgressBar:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/tmgp/UpdateManager;->cancelUpdate:Z

    new-instance v0, Lcom/tencent/tmgp/UpdateManager$1;

    invoke-direct {v0, p0}, Lcom/tencent/tmgp/UpdateManager$1;-><init>(Lcom/tencent/tmgp/UpdateManager;)V

    iput-object v0, p0, Lcom/tencent/tmgp/UpdateManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$0(Lcom/tencent/tmgp/UpdateManager;)Landroid/widget/ProgressBar;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmgp/UpdateManager;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1(Lcom/tencent/tmgp/UpdateManager;)I
    .locals 1

    iget v0, p0, Lcom/tencent/tmgp/UpdateManager;->progress:I

    return v0
.end method

.method static synthetic access$10(Lcom/tencent/tmgp/UpdateManager;I)V
    .locals 0

    iput p1, p0, Lcom/tencent/tmgp/UpdateManager;->progress:I

    return-void
.end method

.method static synthetic access$11(Lcom/tencent/tmgp/UpdateManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmgp/UpdateManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$12(Lcom/tencent/tmgp/UpdateManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/tmgp/UpdateManager;->cancelUpdate:Z

    return v0
.end method

.method static synthetic access$13(Lcom/tencent/tmgp/UpdateManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/tmgp/UpdateManager;->cancelUpdate:Z

    return-void
.end method

.method static synthetic access$2(Lcom/tencent/tmgp/UpdateManager;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmgp/UpdateManager;->updateProgressBar:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3(Lcom/tencent/tmgp/UpdateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmgp/UpdateManager;->restart()V

    return-void
.end method

.method static synthetic access$4(Lcom/tencent/tmgp/UpdateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmgp/UpdateManager;->installApk()V

    return-void
.end method

.method static synthetic access$5(Lcom/tencent/tmgp/UpdateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/tmgp/UpdateManager;->showFail()V

    return-void
.end method

.method static synthetic access$6(Lcom/tencent/tmgp/UpdateManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/tmgp/UpdateManager;->mSavePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$7(Lcom/tencent/tmgp/UpdateManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmgp/UpdateManager;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$8(Lcom/tencent/tmgp/UpdateManager;)Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmgp/UpdateManager;->mDownloadDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$9(Lcom/tencent/tmgp/UpdateManager;)Lcom/tencent/tmgp/GameCatchFish;
    .locals 1

    iget-object v0, p0, Lcom/tencent/tmgp/UpdateManager;->game:Lcom/tencent/tmgp/GameCatchFish;

    return-object v0
.end method

.method private downloadApk()V
    .locals 2

    new-instance v0, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;-><init>(Lcom/tencent/tmgp/UpdateManager;Lcom/tencent/tmgp/UpdateManager$downloadApkThread;)V

    invoke-virtual {v0}, Lcom/tencent/tmgp/UpdateManager$downloadApkThread;->start()V

    return-void
.end method

.method private installApk()V
    .locals 5

    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/tencent/tmgp/UpdateManager;->mSavePath:Ljava/lang/String;

    iget-object v2, p0, Lcom/tencent/tmgp/UpdateManager;->mHashMap:Ljava/util/HashMap;

    const-string v4, "name"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "application/vnd.android.package-archive"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/tencent/tmgp/UpdateManager;->game:Lcom/tencent/tmgp/GameCatchFish;

    invoke-virtual {v2, v1}, Lcom/tencent/tmgp/GameCatchFish;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private restart()V
    .locals 3

    const-string v0, "update"

    const-string v1, "restart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/tmgp/UpdateManager;->game:Lcom/tencent/tmgp/GameCatchFish;

    const-class v2, Lcom/tencent/tmgp/UpdateManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/tmgp/UpdateManager;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method private showDownloadDialog()V
    .locals 7

    iget-object v4, p0, Lcom/tencent/tmgp/UpdateManager;->game:Lcom/tencent/tmgp/GameCatchFish;

    iget-object v4, v4, Lcom/tencent/tmgp/GameCatchFish;->updateUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/tencent/tmgp/UpdateManager;->game:Lcom/tencent/tmgp/GameCatchFish;

    iget-object v5, v5, Lcom/tencent/tmgp/GameCatchFish;->updateUrl:Ljava/lang/String;

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    iget-object v6, p0, Lcom/tencent/tmgp/UpdateManager;->game:Lcom/tencent/tmgp/GameCatchFish;

    iget-object v6, v6, Lcom/tencent/tmgp/GameCatchFish;->updateUrl:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/tmgp/UpdateManager;->mHashMap:Ljava/util/HashMap;

    const-string v5, "url"

    iget-object v6, p0, Lcom/tencent/tmgp/UpdateManager;->game:Lcom/tencent/tmgp/GameCatchFish;

    iget-object v6, v6, Lcom/tencent/tmgp/GameCatchFish;->updateUrl:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/tencent/tmgp/UpdateManager;->mHashMap:Ljava/util/HashMap;

    const-string v5, "name"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/tencent/tmgp/UpdateManager;->game:Lcom/tencent/tmgp/GameCatchFish;

    invoke-direct {v0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v4, "\u6b63\u5728\u4e0b\u8f7d..."

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/tencent/tmgp/UpdateManager;->game:Lcom/tencent/tmgp/GameCatchFish;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v4, 0x7f030002

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const v4, 0x7f060005

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ProgressBar;

    iput-object v4, p0, Lcom/tencent/tmgp/UpdateManager;->mProgress:Landroid/widget/ProgressBar;

    const v4, 0x7f060006

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/tencent/tmgp/UpdateManager;->updateProgressBar:Landroid/widget/TextView;

    new-instance v4, Lcom/tencent/tmgp/UpdateManager$2;

    invoke-direct {v4, p0}, Lcom/tencent/tmgp/UpdateManager$2;-><init>(Lcom/tencent/tmgp/UpdateManager;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    const-string v4, "\u53d6\u6d88"

    new-instance v5, Lcom/tencent/tmgp/UpdateManager$3;

    invoke-direct {v5, p0}, Lcom/tencent/tmgp/UpdateManager$3;-><init>(Lcom/tencent/tmgp/UpdateManager;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/tencent/tmgp/UpdateManager;->mDownloadDialog:Landroid/app/Dialog;

    iget-object v4, p0, Lcom/tencent/tmgp/UpdateManager;->mDownloadDialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    invoke-direct {p0}, Lcom/tencent/tmgp/UpdateManager;->downloadApk()V

    return-void
.end method

.method private showFail()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/tencent/tmgp/UpdateManager;->game:Lcom/tencent/tmgp/GameCatchFish;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u5931\u8d25\uff01"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u4e0b\u8f7d\u5931\u8d25\uff0c\u8bf7\u91cd\u65b0\u4e0b\u8f7d"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "\u786e\u5b9a"

    new-instance v2, Lcom/tencent/tmgp/UpdateManager$4;

    invoke-direct {v2, p0}, Lcom/tencent/tmgp/UpdateManager$4;-><init>(Lcom/tencent/tmgp/UpdateManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1    # Landroid/content/Intent;

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    sget-object v0, Lcom/tencent/tmgp/GameCatchFish;->app:Lcom/tencent/tmgp/GameCatchFish;

    iput-object v0, p0, Lcom/tencent/tmgp/UpdateManager;->game:Lcom/tencent/tmgp/GameCatchFish;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/tencent/tmgp/UpdateManager;->mHashMap:Ljava/util/HashMap;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/tencent/tmgp/UpdateManager;->game:Lcom/tencent/tmgp/GameCatchFish;

    const-class v2, Lcom/tencent/tmgp/UpdateManager;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/tencent/tmgp/UpdateManager;->stopService(Landroid/content/Intent;)Z

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 0
    .param p1    # Landroid/content/Intent;
    .param p2    # I

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    invoke-direct {p0}, Lcom/tencent/tmgp/UpdateManager;->showDownloadDialog()V

    return-void
.end method

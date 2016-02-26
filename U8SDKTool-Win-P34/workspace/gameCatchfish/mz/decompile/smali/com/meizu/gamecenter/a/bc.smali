.class final Lcom/meizu/gamecenter/a/bc;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private a:Landroid/app/ProgressDialog;

.field private b:Z

.field private synthetic c:Lcom/meizu/gamecenter/a/ai;


# direct methods
.method protected constructor <init>(Lcom/meizu/gamecenter/a/ai;)V
    .registers 4

    .prologue
    .line 600
    iput-object p1, p0, Lcom/meizu/gamecenter/a/bc;->c:Lcom/meizu/gamecenter/a/ai;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 599
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/gamecenter/a/bc;->b:Z

    .line 601
    invoke-static {p1}, Lcom/meizu/gamecenter/a/ai;->b(Lcom/meizu/gamecenter/a/ai;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u8bf7\u7a0d\u7b49"

    invoke-static {v0, v1}, Lcom/meizu/a/a/a;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/gamecenter/a/bc;->a:Landroid/app/ProgressDialog;

    .line 602
    iget-object v0, p0, Lcom/meizu/gamecenter/a/bc;->a:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/meizu/gamecenter/a/bd;

    invoke-direct {v1, p0}, Lcom/meizu/gamecenter/a/bd;-><init>(Lcom/meizu/gamecenter/a/bc;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 610
    iget-object v0, p0, Lcom/meizu/gamecenter/a/bc;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 611
    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .registers 5

    .prologue
    .line 615
    const/4 v0, 0x0

    move v1, v0

    .line 623
    :goto_2
    const/16 v0, 0xa

    if-lt v1, v0, :cond_8

    .line 626
    :cond_6
    const/4 v0, 0x0

    return-object v0

    .line 617
    :cond_8
    :try_start_8
    const-string v0, "AppInstaller"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "wait install g s...: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_21} :catch_35

    .line 622
    :goto_21
    iget-boolean v0, p0, Lcom/meizu/gamecenter/a/bc;->b:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/meizu/gamecenter/a/bc;->c:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->b(Lcom/meizu/gamecenter/a/ai;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 623
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 620
    :catch_35
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_21
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/bc;)V
    .registers 2

    .prologue
    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/gamecenter/a/bc;->b:Z

    return-void
.end method

.method static synthetic b(Lcom/meizu/gamecenter/a/bc;)Lcom/meizu/gamecenter/a/ai;
    .registers 2

    .prologue
    .line 595
    iget-object v0, p0, Lcom/meizu/gamecenter/a/bc;->c:Lcom/meizu/gamecenter/a/ai;

    return-object v0
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/meizu/gamecenter/a/bc;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    iget-object v0, p0, Lcom/meizu/gamecenter/a/bc;->a:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    iget-boolean v0, p0, Lcom/meizu/gamecenter/a/bc;->b:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/meizu/gamecenter/a/bc;->c:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->b(Lcom/meizu/gamecenter/a/ai;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/meizu/gamecenter/a/bc;->c:Lcom/meizu/gamecenter/a/ai;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Z)V

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-static {}, Lcom/meizu/gamecenter/a/ai;->b()V

    iget-object v0, p0, Lcom/meizu/gamecenter/a/bc;->c:Lcom/meizu/gamecenter/a/ai;

    iget-object v1, p0, Lcom/meizu/gamecenter/a/bc;->c:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v1}, Lcom/meizu/gamecenter/a/ai;->c(Lcom/meizu/gamecenter/a/ai;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->c(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V

    goto :goto_1b
.end method

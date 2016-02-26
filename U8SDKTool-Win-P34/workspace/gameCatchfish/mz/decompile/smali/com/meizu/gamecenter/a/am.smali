.class final Lcom/meizu/gamecenter/a/am;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/ai;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/am;->a:Lcom/meizu/gamecenter/a/ai;

    iput-object p2, p0, Lcom/meizu/gamecenter/a/am;->b:Ljava/lang/String;

    .line 207
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .prologue
    .line 1
    iget-object v0, p0, Lcom/meizu/gamecenter/a/am;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/gamecenter/a/am;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/meizu/gamecenter/a/am;->b:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/gamecenter/a/am;->a:Lcom/meizu/gamecenter/a/ai;

    iget-object v2, p0, Lcom/meizu/gamecenter/a/am;->b:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    :goto_34
    return-object v0

    :cond_35
    const/4 v0, 0x0

    goto :goto_34
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/meizu/gamecenter/a/am;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->b(Lcom/meizu/gamecenter/a/ai;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/meizu/gamecenter/a/am;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->b(Lcom/meizu/gamecenter/a/ai;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/meizu/gamecenter/a/am;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/ai;->b(Lcom/meizu/gamecenter/a/ai;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_25
    :goto_25
    return-void

    :cond_26
    iget-object v0, p0, Lcom/meizu/gamecenter/a/am;->a:Lcom/meizu/gamecenter/a/ai;

    invoke-static {v0, p1}, Lcom/meizu/gamecenter/a/ai;->d(Lcom/meizu/gamecenter/a/ai;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/meizu/gamecenter/a/am;->a:Lcom/meizu/gamecenter/a/ai;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/ai;->a(Lcom/meizu/gamecenter/a/ai;Z)V

    goto :goto_25
.end method

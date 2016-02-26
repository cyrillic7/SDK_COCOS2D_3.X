.class final Lcom/meizu/gamecenter/a/l;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private synthetic a:Lcom/meizu/gamecenter/a/j;


# direct methods
.method constructor <init>(Lcom/meizu/gamecenter/a/j;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/meizu/gamecenter/a/l;->a:Lcom/meizu/gamecenter/a/j;

    .line 47
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/meizu/gamecenter/a/l;)Lcom/meizu/gamecenter/a/j;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/meizu/gamecenter/a/l;->a:Lcom/meizu/gamecenter/a/j;

    return-object v0
.end method

.method private varargs a()Ljava/lang/Void;
    .registers 4

    .prologue
    .line 50
    iget-object v0, p0, Lcom/meizu/gamecenter/a/l;->a:Lcom/meizu/gamecenter/a/j;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/j;->a(Lcom/meizu/gamecenter/a/j;)Lcom/meizu/gamecenter/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/gamecenter/sdk/b;->a()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/meizu/a/d;

    .line 51
    if-eqz v0, :cond_29

    .line 53
    :try_start_e
    iget-object v1, p0, Lcom/meizu/gamecenter/a/l;->a:Lcom/meizu/gamecenter/a/j;

    new-instance v2, Lcom/meizu/gamecenter/a/m;

    invoke-direct {v2, p0}, Lcom/meizu/gamecenter/a/m;-><init>(Lcom/meizu/gamecenter/a/l;)V

    invoke-virtual {v1, v0, v2}, Lcom/meizu/gamecenter/a/j;->a(Lcom/meizu/a/d;Lcom/meizu/a/a;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_18} :catch_1a

    .line 96
    :goto_18
    const/4 v0, 0x0

    return-object v0

    .line 80
    :catch_1a
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 81
    iget-object v0, p0, Lcom/meizu/gamecenter/a/l;->a:Lcom/meizu/gamecenter/a/j;

    new-instance v1, Lcom/meizu/gamecenter/a/p;

    invoke-direct {v1, p0}, Lcom/meizu/gamecenter/a/p;-><init>(Lcom/meizu/gamecenter/a/l;)V

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/j;->a(Lcom/meizu/gamecenter/a/j;Ljava/lang/Runnable;)V

    goto :goto_18

    .line 89
    :cond_29
    iget-object v0, p0, Lcom/meizu/gamecenter/a/l;->a:Lcom/meizu/gamecenter/a/j;

    new-instance v1, Lcom/meizu/gamecenter/a/q;

    invoke-direct {v1, p0}, Lcom/meizu/gamecenter/a/q;-><init>(Lcom/meizu/gamecenter/a/l;)V

    invoke-static {v0, v1}, Lcom/meizu/gamecenter/a/j;->a(Lcom/meizu/gamecenter/a/j;Ljava/lang/Runnable;)V

    goto :goto_18
.end method


# virtual methods
.method protected final varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/meizu/gamecenter/a/l;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 3

    .prologue
    .line 1
    iget-object v0, p0, Lcom/meizu/gamecenter/a/l;->a:Lcom/meizu/gamecenter/a/j;

    invoke-static {v0}, Lcom/meizu/gamecenter/a/j;->a(Lcom/meizu/gamecenter/a/j;)Lcom/meizu/gamecenter/sdk/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/gamecenter/sdk/b;->b()V

    return-void
.end method

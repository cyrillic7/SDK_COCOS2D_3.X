.class Lcom/baidu/frontia/module/deeplink/h;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/baidu/frontia/module/deeplink/g;


# direct methods
.method constructor <init>(Lcom/baidu/frontia/module/deeplink/g;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/frontia/module/deeplink/h;->a:Lcom/baidu/frontia/module/deeplink/g;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 6

    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/h;->a:Lcom/baidu/frontia/module/deeplink/g;

    new-instance v1, Lcom/baidu/android/a/a/e;

    new-instance v2, Lcom/baidu/frontia/module/deeplink/i;

    iget-object v3, p0, Lcom/baidu/frontia/module/deeplink/h;->a:Lcom/baidu/frontia/module/deeplink/g;

    invoke-static {v3}, Lcom/baidu/frontia/module/deeplink/g;->a(Lcom/baidu/frontia/module/deeplink/g;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/baidu/frontia/module/deeplink/i;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/baidu/android/a/a/e;-><init>(Lcom/baidu/android/a/a/d;)V

    invoke-static {v0, v1}, Lcom/baidu/frontia/module/deeplink/g;->a(Lcom/baidu/frontia/module/deeplink/g;Lcom/baidu/android/a/a/e;)Lcom/baidu/android/a/a/e;

    :goto_15
    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/h;->a:Lcom/baidu/frontia/module/deeplink/g;

    invoke-static {v0}, Lcom/baidu/frontia/module/deeplink/g;->c(Lcom/baidu/frontia/module/deeplink/g;)Lcom/baidu/android/a/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/frontia/module/deeplink/h;->a:Lcom/baidu/frontia/module/deeplink/g;

    invoke-static {v1}, Lcom/baidu/frontia/module/deeplink/g;->b(Lcom/baidu/frontia/module/deeplink/g;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/baidu/android/a/a/e;->a(I)Z

    move-result v0

    if-nez v0, :cond_50

    :try_start_27
    iget-object v0, p0, Lcom/baidu/frontia/module/deeplink/h;->a:Lcom/baidu/frontia/module/deeplink/g;

    invoke-static {v0}, Lcom/baidu/frontia/module/deeplink/g;->d(Lcom/baidu/frontia/module/deeplink/g;)V

    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_31
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_31} :catch_32

    goto :goto_15

    :catch_32
    move-exception v0

    const-string v1, "LocalServer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_50
    const/4 v0, 0x0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/baidu/frontia/module/deeplink/h;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

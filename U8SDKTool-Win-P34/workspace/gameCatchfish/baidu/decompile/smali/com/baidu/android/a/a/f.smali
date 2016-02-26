.class Lcom/baidu/android/a/a/f;
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
.field final synthetic a:Lcom/baidu/android/a/a/e;


# direct methods
.method constructor <init>(Lcom/baidu/android/a/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/baidu/android/a/a/f;->a:Lcom/baidu/android/a/a/e;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/baidu/android/a/a/f;->a:Lcom/baidu/android/a/a/e;

    invoke-static {v0}, Lcom/baidu/android/a/a/e;->a(Lcom/baidu/android/a/a/e;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_c

    :goto_5
    iget-object v0, p0, Lcom/baidu/android/a/a/f;->a:Lcom/baidu/android/a/a/e;

    invoke-static {v0}, Lcom/baidu/android/a/a/e;->b(Lcom/baidu/android/a/a/e;)V

    const/4 v0, 0x0

    return-object v0

    :catch_c
    move-exception v0

    iget-object v0, p0, Lcom/baidu/android/a/a/f;->a:Lcom/baidu/android/a/a/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/baidu/android/a/a/e;->a(Lcom/baidu/android/a/a/e;Z)Z

    goto :goto_5
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/baidu/android/a/a/f;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

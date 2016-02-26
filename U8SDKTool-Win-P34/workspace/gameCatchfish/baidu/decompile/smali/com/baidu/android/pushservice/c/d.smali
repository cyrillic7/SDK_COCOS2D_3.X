.class public Lcom/baidu/android/pushservice/c/d;
.super Ljava/lang/Object;


# instance fields
.field public a:Lcom/baidu/android/pushservice/c/h;

.field public b:Lcom/baidu/android/pushservice/c/i;

.field private c:Lcom/baidu/android/pushservice/c/c;


# direct methods
.method public constructor <init>(Lcom/baidu/android/pushservice/c/c;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baidu/android/pushservice/c/d;->c:Lcom/baidu/android/pushservice/c/c;

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)Lcom/baidu/android/pushservice/c/d;
    .registers 5

    invoke-static {p0}, Lcom/baidu/android/pushservice/c/b;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/c/b;->b(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/h;

    move-result-object v1

    if-eqz v1, :cond_18

    iget-object v0, v1, Lcom/baidu/android/pushservice/c/h;->c:Ljava/lang/String;

    if-eqz v0, :cond_18

    new-instance v0, Lcom/baidu/android/pushservice/c/d;

    sget-object v2, Lcom/baidu/android/pushservice/c/c;->a:Lcom/baidu/android/pushservice/c/c;

    invoke-direct {v0, v2}, Lcom/baidu/android/pushservice/c/d;-><init>(Lcom/baidu/android/pushservice/c/c;)V

    iput-object v1, v0, Lcom/baidu/android/pushservice/c/d;->a:Lcom/baidu/android/pushservice/c/h;

    :goto_17
    return-object v0

    :cond_18
    invoke-static {p0}, Lcom/baidu/android/pushservice/c/j;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/j;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/c/j;->d(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/i;

    move-result-object v1

    if-eqz v1, :cond_32

    invoke-virtual {v1}, Lcom/baidu/android/pushservice/c/i;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_32

    new-instance v0, Lcom/baidu/android/pushservice/c/d;

    sget-object v2, Lcom/baidu/android/pushservice/c/c;->b:Lcom/baidu/android/pushservice/c/c;

    invoke-direct {v0, v2}, Lcom/baidu/android/pushservice/c/d;-><init>(Lcom/baidu/android/pushservice/c/c;)V

    iput-object v1, v0, Lcom/baidu/android/pushservice/c/d;->b:Lcom/baidu/android/pushservice/c/i;

    goto :goto_17

    :cond_32
    invoke-static {p0}, Lcom/baidu/android/pushservice/c/l;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/c/l;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/c/l;->b(Ljava/lang/String;)Lcom/baidu/android/pushservice/c/a;

    move-result-object v0

    check-cast v0, Lcom/baidu/android/pushservice/c/k;

    if-eqz v0, :cond_46

    new-instance v0, Lcom/baidu/android/pushservice/c/d;

    sget-object v1, Lcom/baidu/android/pushservice/c/c;->c:Lcom/baidu/android/pushservice/c/c;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/c/d;-><init>(Lcom/baidu/android/pushservice/c/c;)V

    goto :goto_17

    :cond_46
    invoke-static {p0}, Lcom/baidu/android/pushservice/e/e;->a(Landroid/content/Context;)Lcom/baidu/android/pushservice/e/e;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/baidu/android/pushservice/e/e;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_58

    new-instance v0, Lcom/baidu/android/pushservice/c/d;

    sget-object v1, Lcom/baidu/android/pushservice/c/c;->d:Lcom/baidu/android/pushservice/c/c;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/c/d;-><init>(Lcom/baidu/android/pushservice/c/c;)V

    goto :goto_17

    :cond_58
    new-instance v0, Lcom/baidu/android/pushservice/c/d;

    sget-object v1, Lcom/baidu/android/pushservice/c/c;->e:Lcom/baidu/android/pushservice/c/c;

    invoke-direct {v0, v1}, Lcom/baidu/android/pushservice/c/d;-><init>(Lcom/baidu/android/pushservice/c/c;)V

    goto :goto_17
.end method


# virtual methods
.method public a()Lcom/baidu/android/pushservice/c/c;
    .registers 2

    iget-object v0, p0, Lcom/baidu/android/pushservice/c/d;->c:Lcom/baidu/android/pushservice/c/c;

    return-object v0
.end method

.class public final Lcom/tencent/beacon/a/j;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static f:Lcom/tencent/beacon/a/j;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/j;->a:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/j;->b:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/j;->c:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/j;->d:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/a/j;->e:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcom/tencent/beacon/a/e;->m()Lcom/tencent/beacon/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/beacon/a/e;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/j;->b:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/tencent/beacon/a/g;->a(Landroid/content/Context;)Lcom/tencent/beacon/a/g;

    .line 22
    invoke-static {p1}, Lcom/tencent/beacon/a/g;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/j;->c:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/tencent/beacon/a/g;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/j;->d:Ljava/lang/String;

    .line 24
    invoke-static {p1}, Lcom/tencent/beacon/a/g;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/a/j;->e:Ljava/lang/String;

    .line 27
    :try_start_36
    const-string v0, "QIMEI_DENGTA"

    const-string v1, ""

    invoke-static {p1, v0, v1}, Lcom/tencent/beacon/a/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_4a

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    .line 30
    iput-object v0, p0, Lcom/tencent/beacon/a/j;->a:Ljava/lang/String;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_4a} :catch_4b

    .line 35
    :cond_4a
    :goto_4a
    return-void

    .line 32
    :catch_4b
    move-exception v0

    goto :goto_4a
.end method

.method public static a(Landroid/content/Context;)Lcom/tencent/beacon/a/j;
    .registers 2

    .prologue
    .line 38
    sget-object v0, Lcom/tencent/beacon/a/j;->f:Lcom/tencent/beacon/a/j;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/tencent/beacon/a/j;

    invoke-direct {v0, p0}, Lcom/tencent/beacon/a/j;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/tencent/beacon/a/j;->f:Lcom/tencent/beacon/a/j;

    .line 41
    :cond_b
    sget-object v0, Lcom/tencent/beacon/a/j;->f:Lcom/tencent/beacon/a/j;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 3

    .prologue
    .line 45
    iget-object v0, p0, Lcom/tencent/beacon/a/j;->a:Ljava/lang/String;

    if-eqz v0, :cond_e

    const-string v0, ""

    iget-object v1, p0, Lcom/tencent/beacon/a/j;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 46
    :cond_e
    iget-object v0, p0, Lcom/tencent/beacon/a/j;->b:Ljava/lang/String;

    .line 48
    :goto_10
    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/tencent/beacon/a/j;->a:Ljava/lang/String;

    goto :goto_10
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 53
    iput-object p1, p0, Lcom/tencent/beacon/a/j;->a:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/tencent/beacon/a/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/tencent/beacon/a/j;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/tencent/beacon/a/j;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/tencent/beacon/a/j;->e:Ljava/lang/String;

    return-object v0
.end method

.class public Lcom/duoku/platform/ui/a/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/duoku/platform/ui/a/e;->g:Z

    .line 17
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 38
    iput-object p1, p0, Lcom/duoku/platform/ui/a/e;->f:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/duoku/platform/ui/a/e;->g:Z

    .line 27
    return-void
.end method

.method public a()Z
    .registers 2

    .prologue
    .line 21
    iget-boolean v0, p0, Lcom/duoku/platform/ui/a/e;->g:Z

    return v0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/duoku/platform/ui/a/e;->f:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/duoku/platform/ui/a/e;->a:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/duoku/platform/ui/a/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/duoku/platform/ui/a/e;->b:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/duoku/platform/ui/a/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 68
    iput-object p1, p0, Lcom/duoku/platform/ui/a/e;->c:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/duoku/platform/ui/a/e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 78
    iput-object p1, p0, Lcom/duoku/platform/ui/a/e;->d:Ljava/lang/String;

    .line 79
    return-void
.end method

.method public f()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/duoku/platform/ui/a/e;->e:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 88
    iput-object p1, p0, Lcom/duoku/platform/ui/a/e;->e:Ljava/lang/String;

    .line 89
    return-void
.end method

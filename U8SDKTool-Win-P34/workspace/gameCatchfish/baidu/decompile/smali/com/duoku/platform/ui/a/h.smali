.class public Lcom/duoku/platform/ui/a/h;
.super Lcom/duoku/platform/h/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/g;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/String;

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/duoku/platform/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/duoku/platform/ui/a/h;->g:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 25
    iput-object p1, p0, Lcom/duoku/platform/ui/a/h;->g:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public a(Ljava/util/ArrayList;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/g;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 49
    iput-object p1, p0, Lcom/duoku/platform/ui/a/h;->a:Ljava/util/ArrayList;

    .line 50
    return-void
.end method

.method public a(Z)V
    .registers 2

    .prologue
    .line 31
    iput-boolean p1, p0, Lcom/duoku/platform/ui/a/h;->e:Z

    .line 32
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 55
    iput-object p1, p0, Lcom/duoku/platform/ui/a/h;->b:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public b()Z
    .registers 2

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/duoku/platform/ui/a/h;->e:Z

    return v0
.end method

.method public c()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/duoku/platform/ui/a/g;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/duoku/platform/ui/a/h;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 61
    iput-object p1, p0, Lcom/duoku/platform/ui/a/h;->f:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/duoku/platform/ui/a/h;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/duoku/platform/ui/a/h;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorCode()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/duoku/platform/ui/a/h;->c:I

    return v0
.end method

.method public getErrorString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/duoku/platform/ui/a/h;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setErrorCode(I)V
    .registers 2

    .prologue
    .line 37
    iput p1, p0, Lcom/duoku/platform/ui/a/h;->c:I

    .line 38
    return-void
.end method

.method public setErrorString(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/duoku/platform/ui/a/h;->d:Ljava/lang/String;

    .line 44
    return-void
.end method

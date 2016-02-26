.class public Lcom/duoku/platform/h/t;
.super Lcom/duoku/platform/h/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Lcom/duoku/platform/h/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/duoku/platform/h/t;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 38
    iput p1, p0, Lcom/duoku/platform/h/t;->d:I

    .line 39
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 28
    iput-object p1, p0, Lcom/duoku/platform/h/t;->c:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public b()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/duoku/platform/h/t;->d:I

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 48
    iput-object p1, p0, Lcom/duoku/platform/h/t;->b:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/duoku/platform/h/t;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 58
    iput-object p1, p0, Lcom/duoku/platform/h/t;->a:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public d()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/duoku/platform/h/t;->a:Ljava/lang/String;

    return-object v0
.end method

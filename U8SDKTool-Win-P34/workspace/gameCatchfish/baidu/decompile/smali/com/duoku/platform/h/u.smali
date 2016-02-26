.class public Lcom/duoku/platform/h/u;
.super Lcom/duoku/platform/h/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/duoku/platform/h/a;-><init>()V

    .line 32
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8
    iget-object v0, p0, Lcom/duoku/platform/h/u;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 11
    iput-object p1, p0, Lcom/duoku/platform/h/u;->a:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/duoku/platform/h/u;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 17
    iput-object p1, p0, Lcom/duoku/platform/h/u;->b:Ljava/lang/String;

    .line 18
    return-void
.end method

.method public c()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/duoku/platform/h/u;->c:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 23
    iput-object p1, p0, Lcom/duoku/platform/h/u;->c:Ljava/lang/String;

    .line 24
    return-void
.end method

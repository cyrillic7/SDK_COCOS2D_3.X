.class public Lcom/duoku/platform/h/o;
.super Lcom/duoku/platform/h/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/duoku/platform/h/a;-><init>()V

    .line 26
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    iget-object v0, p0, Lcom/duoku/platform/h/o;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 10
    iput-object p1, p0, Lcom/duoku/platform/h/o;->a:Ljava/lang/String;

    .line 11
    return-void
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/duoku/platform/h/o;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 16
    iput-object p1, p0, Lcom/duoku/platform/h/o;->b:Ljava/lang/String;

    .line 17
    return-void
.end method

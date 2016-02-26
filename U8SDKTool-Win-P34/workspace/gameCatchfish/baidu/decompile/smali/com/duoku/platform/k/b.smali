.class public Lcom/duoku/platform/k/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# instance fields
.field private a:I

.field private b:Lcom/duoku/platform/k/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/k/b;->b:Lcom/duoku/platform/k/d;

    .line 28
    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 8

    .prologue
    .line 45
    new-instance v0, Lcom/duoku/platform/h/s;

    invoke-direct {v0}, Lcom/duoku/platform/h/s;-><init>()V

    .line 46
    invoke-virtual {v0, p4}, Lcom/duoku/platform/h/s;->setErrorString(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v0, p2}, Lcom/duoku/platform/h/s;->setRequestId(I)V

    .line 48
    invoke-virtual {v0, p3}, Lcom/duoku/platform/h/s;->setErrorCode(I)V

    .line 49
    invoke-virtual {v0, p1}, Lcom/duoku/platform/h/s;->setRequestTag(I)V

    .line 51
    iget-object v1, p0, Lcom/duoku/platform/k/b;->b:Lcom/duoku/platform/k/d;

    iget v2, p0, Lcom/duoku/platform/k/b;->a:I

    invoke-interface {v1, p3, v2, v0}, Lcom/duoku/platform/k/d;->a(IILjava/lang/Object;)V

    .line 52
    return-void
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 7

    .prologue
    .line 57
    check-cast p2, Lcom/duoku/platform/h/f;

    .line 59
    iget-object v0, p0, Lcom/duoku/platform/k/b;->b:Lcom/duoku/platform/k/d;

    const/4 v1, 0x0

    iget v2, p0, Lcom/duoku/platform/k/b;->a:I

    invoke-interface {v0, v1, v2, p2}, Lcom/duoku/platform/k/d;->a(IILjava/lang/Object;)V

    .line 60
    return-void
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 66
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 72
    return-void
.end method

.method public a(Lcom/duoku/platform/k/d;I)V
    .registers 7

    .prologue
    .line 34
    iput p2, p0, Lcom/duoku/platform/k/b;->a:I

    .line 35
    iput-object p1, p0, Lcom/duoku/platform/k/b;->b:Lcom/duoku/platform/k/d;

    .line 37
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/f/a;->a()Ljava/lang/String;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_CUSTOMER_QUESTION_URL:Ljava/lang/String;

    .line 39
    const/16 v3, 0x3c

    .line 38
    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 40
    return-void
.end method

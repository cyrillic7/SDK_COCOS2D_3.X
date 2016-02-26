.class public Lcom/duoku/platform/k/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/g/f;


# instance fields
.field private a:I

.field private b:I

.field private c:Lcom/duoku/platform/k/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/duoku/platform/k/a;->c:Lcom/duoku/platform/k/d;

    .line 12
    return-void
.end method


# virtual methods
.method public a(IIILjava/lang/String;)V
    .registers 8

    .prologue
    .line 31
    new-instance v0, Lcom/duoku/platform/h/s;

    invoke-direct {v0}, Lcom/duoku/platform/h/s;-><init>()V

    .line 32
    invoke-virtual {v0, p4}, Lcom/duoku/platform/h/s;->setErrorString(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p2}, Lcom/duoku/platform/h/s;->setRequestId(I)V

    .line 34
    invoke-virtual {v0, p3}, Lcom/duoku/platform/h/s;->setErrorCode(I)V

    .line 35
    invoke-virtual {v0, p1}, Lcom/duoku/platform/h/s;->setRequestTag(I)V

    .line 37
    iget-object v1, p0, Lcom/duoku/platform/k/a;->c:Lcom/duoku/platform/k/d;

    iget v2, p0, Lcom/duoku/platform/k/a;->a:I

    invoke-interface {v1, p3, v2, v0}, Lcom/duoku/platform/k/d;->a(IILjava/lang/Object;)V

    .line 38
    return-void
.end method

.method public a(ILcom/duoku/platform/h/a;I)V
    .registers 7

    .prologue
    .line 42
    check-cast p2, Lcom/duoku/platform/ui/a/b;

    .line 44
    iget-object v0, p0, Lcom/duoku/platform/k/a;->c:Lcom/duoku/platform/k/d;

    const/4 v1, 0x0

    iget v2, p0, Lcom/duoku/platform/k/a;->a:I

    invoke-interface {v0, v1, v2, p2}, Lcom/duoku/platform/k/d;->a(IILjava/lang/Object;)V

    .line 46
    return-void
.end method

.method public a(JJI)V
    .registers 6

    .prologue
    .line 52
    return-void
.end method

.method public a(Lcom/duoku/platform/g/f$a;I)V
    .registers 3

    .prologue
    .line 58
    return-void
.end method

.method public a(Lcom/duoku/platform/k/d;II)V
    .registers 8

    .prologue
    .line 19
    iput p3, p0, Lcom/duoku/platform/k/a;->a:I

    .line 20
    iput-object p1, p0, Lcom/duoku/platform/k/a;->c:Lcom/duoku/platform/k/d;

    .line 21
    iput p2, p0, Lcom/duoku/platform/k/a;->b:I

    .line 23
    invoke-static {}, Lcom/duoku/platform/f/c;->a()Lcom/duoku/platform/f/a;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/duoku/platform/k/a;->b:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/duoku/platform/f/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/duoku/platform/g/g;->a()Lcom/duoku/platform/g/e;

    move-result-object v1

    sget-object v2, Lcom/duoku/platform/util/Constants;->DK_ACT_INFO_URL:Ljava/lang/String;

    .line 25
    const/16 v3, 0x4c

    .line 24
    invoke-interface {v1, v2, v3, v0, p0}, Lcom/duoku/platform/g/e;->a(Ljava/lang/String;ILjava/lang/String;Lcom/duoku/platform/g/f;)I

    .line 26
    return-void
.end method

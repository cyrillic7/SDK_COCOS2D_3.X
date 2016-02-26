.class public final Lcom/tencent/beacon/c/c/a;
.super Lcom/tencent/beacon/f/c;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/tencent/beacon/f/c;-><init>()V

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/c/c/a;->a:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/c/c/a;->b:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/c/c/a;->c:Ljava/lang/String;

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/c/c/a;->d:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/tencent/beacon/c/c/a;->e:Ljava/lang/String;

    .line 23
    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/beacon/f/a;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1, v1, v1}, Lcom/tencent/beacon/f/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/c/c/a;->a:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/c/c/a;->b:Ljava/lang/String;

    .line 56
    const/4 v0, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/c/c/a;->c:Ljava/lang/String;

    .line 58
    const/4 v0, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/c/c/a;->d:Ljava/lang/String;

    .line 60
    const/4 v0, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/a;->b(IZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/beacon/c/c/a;->e:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public final a(Lcom/tencent/beacon/f/b;)V
    .registers 4

    .prologue
    .line 27
    iget-object v0, p0, Lcom/tencent/beacon/c/c/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_a

    .line 29
    iget-object v0, p0, Lcom/tencent/beacon/c/c/a;->a:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/b;->a(Ljava/lang/String;I)V

    .line 31
    :cond_a
    iget-object v0, p0, Lcom/tencent/beacon/c/c/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_14

    .line 33
    iget-object v0, p0, Lcom/tencent/beacon/c/c/a;->b:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/b;->a(Ljava/lang/String;I)V

    .line 35
    :cond_14
    iget-object v0, p0, Lcom/tencent/beacon/c/c/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 37
    iget-object v0, p0, Lcom/tencent/beacon/c/c/a;->c:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/b;->a(Ljava/lang/String;I)V

    .line 39
    :cond_1e
    iget-object v0, p0, Lcom/tencent/beacon/c/c/a;->d:Ljava/lang/String;

    if-eqz v0, :cond_28

    .line 41
    iget-object v0, p0, Lcom/tencent/beacon/c/c/a;->d:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/b;->a(Ljava/lang/String;I)V

    .line 43
    :cond_28
    iget-object v0, p0, Lcom/tencent/beacon/c/c/a;->e:Ljava/lang/String;

    if-eqz v0, :cond_32

    .line 45
    iget-object v0, p0, Lcom/tencent/beacon/c/c/a;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Lcom/tencent/beacon/f/b;->a(Ljava/lang/String;I)V

    .line 47
    :cond_32
    return-void
.end method

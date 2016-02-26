.class public Lcom/duoku/platform/g/h;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/duoku/platform/g/h$a;
    }
.end annotation


# instance fields
.field private a:Lcom/duoku/platform/h/a;

.field private b:Lcom/duoku/platform/g/h$a;

.field private c:J

.field private d:J

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/duoku/platform/g/h;->g:I

    return v0
.end method

.method public a(I)V
    .registers 2

    .prologue
    .line 39
    iput p1, p0, Lcom/duoku/platform/g/h;->g:I

    .line 40
    return-void
.end method

.method public a(J)V
    .registers 4

    .prologue
    .line 62
    iput-wide p1, p0, Lcom/duoku/platform/g/h;->c:J

    .line 63
    return-void
.end method

.method public a(Lcom/duoku/platform/g/h$a;)V
    .registers 2

    .prologue
    .line 54
    iput-object p1, p0, Lcom/duoku/platform/g/h;->b:Lcom/duoku/platform/g/h$a;

    .line 55
    return-void
.end method

.method public a(Lcom/duoku/platform/h/a;)V
    .registers 2

    .prologue
    .line 46
    iput-object p1, p0, Lcom/duoku/platform/g/h;->a:Lcom/duoku/platform/h/a;

    .line 47
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 82
    iput-object p1, p0, Lcom/duoku/platform/g/h;->f:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public b()Lcom/duoku/platform/h/a;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/duoku/platform/g/h;->a:Lcom/duoku/platform/h/a;

    return-object v0
.end method

.method public b(I)V
    .registers 2

    .prologue
    .line 78
    iput p1, p0, Lcom/duoku/platform/g/h;->e:I

    .line 79
    return-void
.end method

.method public b(J)V
    .registers 4

    .prologue
    .line 70
    iput-wide p1, p0, Lcom/duoku/platform/g/h;->d:J

    .line 71
    return-void
.end method

.method public c()Lcom/duoku/platform/g/h$a;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/duoku/platform/g/h;->b:Lcom/duoku/platform/g/h$a;

    return-object v0
.end method

.method public d()J
    .registers 3

    .prologue
    .line 58
    iget-wide v0, p0, Lcom/duoku/platform/g/h;->c:J

    return-wide v0
.end method

.method public e()J
    .registers 3

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/duoku/platform/g/h;->d:J

    return-wide v0
.end method

.method public f()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/duoku/platform/g/h;->e:I

    return v0
.end method

.method public g()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/duoku/platform/g/h;->f:Ljava/lang/String;

    return-object v0
.end method

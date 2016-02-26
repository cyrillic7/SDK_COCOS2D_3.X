.class public Lcom/tencent/map/a/a/d;
.super Ljava/lang/Object;


# instance fields
.field private A:J

.field public a:I

.field public b:D

.field public c:D

.field public d:D

.field public e:D

.field public f:D

.field public g:D

.field public h:I

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Ljava/lang/String;

.field public o:Ljava/lang/String;

.field public p:Ljava/lang/String;

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:Ljava/lang/String;

.field public t:Ljava/lang/String;

.field public u:Ljava/lang/String;

.field public v:Ljava/lang/String;

.field public w:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/tencent/map/a/a/c;",
            ">;"
        }
    .end annotation
.end field

.field public x:Z

.field public y:I

.field public z:I


# direct methods
.method public constructor <init>()V
    .registers 8

    const/4 v6, -0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/map/a/a/d;->a:I

    iput-wide v4, p0, Lcom/tencent/map/a/a/d;->b:D

    iput-wide v4, p0, Lcom/tencent/map/a/a/d;->c:D

    const-wide/high16 v0, -0x4010000000000000L

    iput-wide v0, p0, Lcom/tencent/map/a/a/d;->d:D

    iput-wide v4, p0, Lcom/tencent/map/a/a/d;->e:D

    iput-wide v4, p0, Lcom/tencent/map/a/a/d;->f:D

    iput-wide v4, p0, Lcom/tencent/map/a/a/d;->g:D

    iput v3, p0, Lcom/tencent/map/a/a/d;->h:I

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->s:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->t:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->u:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/tencent/map/a/a/d;->x:Z

    iput v3, p0, Lcom/tencent/map/a/a/d;->y:I

    iput v6, p0, Lcom/tencent/map/a/a/d;->z:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/map/a/a/d;->A:J

    iput-wide v4, p0, Lcom/tencent/map/a/a/d;->e:D

    iput-wide v4, p0, Lcom/tencent/map/a/a/d;->d:D

    iput-wide v4, p0, Lcom/tencent/map/a/a/d;->c:D

    iput-wide v4, p0, Lcom/tencent/map/a/a/d;->b:D

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->m:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/tencent/map/a/a/d;->x:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/map/a/a/d;->A:J

    iput v3, p0, Lcom/tencent/map/a/a/d;->y:I

    iput v6, p0, Lcom/tencent/map/a/a/d;->z:I

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/map/a/a/d;)V
    .registers 8

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/map/a/a/d;->a:I

    iput-wide v4, p0, Lcom/tencent/map/a/a/d;->b:D

    iput-wide v4, p0, Lcom/tencent/map/a/a/d;->c:D

    const-wide/high16 v0, -0x4010000000000000L

    iput-wide v0, p0, Lcom/tencent/map/a/a/d;->d:D

    iput-wide v4, p0, Lcom/tencent/map/a/a/d;->e:D

    iput-wide v4, p0, Lcom/tencent/map/a/a/d;->f:D

    iput-wide v4, p0, Lcom/tencent/map/a/a/d;->g:D

    iput v3, p0, Lcom/tencent/map/a/a/d;->h:I

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->i:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->j:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->k:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->l:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->m:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->n:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->o:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->p:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->q:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->r:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->s:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->t:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->u:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->v:Ljava/lang/String;

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/tencent/map/a/a/d;->x:Z

    iput v3, p0, Lcom/tencent/map/a/a/d;->y:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/map/a/a/d;->z:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/map/a/a/d;->A:J

    iget v0, p1, Lcom/tencent/map/a/a/d;->a:I

    iput v0, p0, Lcom/tencent/map/a/a/d;->a:I

    iget-wide v0, p1, Lcom/tencent/map/a/a/d;->b:D

    iput-wide v0, p0, Lcom/tencent/map/a/a/d;->b:D

    iget-wide v0, p1, Lcom/tencent/map/a/a/d;->c:D

    iput-wide v0, p0, Lcom/tencent/map/a/a/d;->c:D

    iget-wide v0, p1, Lcom/tencent/map/a/a/d;->d:D

    iput-wide v0, p0, Lcom/tencent/map/a/a/d;->d:D

    iget-wide v0, p1, Lcom/tencent/map/a/a/d;->e:D

    iput-wide v0, p0, Lcom/tencent/map/a/a/d;->e:D

    iget-boolean v0, p1, Lcom/tencent/map/a/a/d;->x:Z

    iput-boolean v0, p0, Lcom/tencent/map/a/a/d;->x:Z

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->i:Ljava/lang/String;

    iput v3, p0, Lcom/tencent/map/a/a/d;->h:I

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->j:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->k:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->l:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->m:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->n:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->n:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->o:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->o:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->p:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->q:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->q:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->r:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->s:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->s:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->t:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->t:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->u:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->u:Ljava/lang/String;

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->v:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/map/a/a/d;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/map/a/a/d;->A:J

    iget v0, p1, Lcom/tencent/map/a/a/d;->y:I

    iput v0, p0, Lcom/tencent/map/a/a/d;->y:I

    iget v0, p1, Lcom/tencent/map/a/a/d;->z:I

    iput v0, p0, Lcom/tencent/map/a/a/d;->z:I

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_c8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;

    iget-object v0, p1, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/a/a/c;

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_b6

    :cond_c8
    return-void
.end method


# virtual methods
.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/tencent/map/a/a/d;->A:J

    return-wide v0
.end method

.method public a(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    const-string v0, "Unknown"

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->l:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->i:Ljava/lang/String;

    if-nez p1, :cond_10

    :cond_f
    :goto_f
    return-void

    :cond_10
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_f

    array-length v1, v0

    if-lez v1, :cond_20

    const/4 v2, 0x0

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->i:Ljava/lang/String;

    :cond_20
    if-le v1, v4, :cond_26

    aget-object v2, v0, v4

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->j:Ljava/lang/String;

    :cond_26
    if-ne v1, v3, :cond_33

    aget-object v2, v0, v4

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->k:Ljava/lang/String;

    :cond_2c
    :goto_2c
    if-ne v1, v3, :cond_3a

    aget-object v0, v0, v5

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->l:Ljava/lang/String;

    goto :goto_f

    :cond_33
    if-le v1, v3, :cond_2c

    aget-object v2, v0, v5

    iput-object v2, p0, Lcom/tencent/map/a/a/d;->k:Ljava/lang/String;

    goto :goto_2c

    :cond_3a
    if-le v1, v3, :cond_f

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/tencent/map/a/a/d;->l:Ljava/lang/String;

    goto :goto_f
.end method

.method public toString()Ljava/lang/String;
    .registers 7

    const/4 v4, 0x4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, p0, Lcom/tencent/map/a/a/d;->z:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/tencent/map/a/a/d;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/tencent/map/a/a/d;->x:Z

    if-eqz v0, :cond_15b

    const-string v0, "Mars"

    :goto_24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, p0, Lcom/tencent/map/a/a/d;->a:I

    if-nez v0, :cond_15f

    const-string v0, "GPS"

    :goto_34
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/map/a/a/d;->b:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/map/a/a/d;->c:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/map/a/a/d;->d:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/map/a/a/d;->e:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/map/a/a/d;->f:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/tencent/map/a/a/d;->g:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/tencent/map/a/a/d;->z:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_8b

    iget v0, p0, Lcom/tencent/map/a/a/d;->z:I

    if-ne v0, v4, :cond_ea

    :cond_8b
    iget-object v0, p0, Lcom/tencent/map/a/a/d;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_ea
    iget v0, p0, Lcom/tencent/map/a/a/d;->z:I

    if-ne v0, v4, :cond_163

    iget-object v0, p0, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;

    if-eqz v0, :cond_163

    iget-object v0, p0, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/tencent/map/a/a/d;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_107
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_163

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/a/a/c;

    iget-object v3, v0, Lcom/tencent/map/a/a/c;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/map/a/a/c;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/tencent/map/a/a/c;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/map/a/a/c;->d:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/map/a/a/c;->e:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/tencent/map/a/a/c;->f:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_107

    :cond_15b
    const-string v0, "WGS84"

    goto/16 :goto_24

    :cond_15f
    const-string v0, "Network"

    goto/16 :goto_34

    :cond_163
    iget v0, p0, Lcom/tencent/map/a/a/d;->z:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1cb

    iget v0, p0, Lcom/tencent/map/a/a/d;->h:I

    if-nez v0, :cond_1d7

    iget-object v0, p0, Lcom/tencent/map/a/a/d;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->k:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->l:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->m:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->n:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->o:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1cb
    :goto_1cb
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/map/b/h;->a(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1d7
    iget v0, p0, Lcom/tencent/map/a/a/d;->h:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1cb

    iget-object v0, p0, Lcom/tencent/map/a/a/d;->i:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->q:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->r:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->s:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->t:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/map/a/a/d;->v:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1cb
.end method

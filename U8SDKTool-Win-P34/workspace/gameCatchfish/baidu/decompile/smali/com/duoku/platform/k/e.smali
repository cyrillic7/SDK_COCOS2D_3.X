.class public Lcom/duoku/platform/k/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/duoku/platform/b/a;
.implements Lcom/duoku/platform/k/d;


# static fields
.field private static synthetic e:[I


# instance fields
.field private a:Lcom/duoku/platform/k/b;

.field private b:Lcom/duoku/platform/k/c;

.field private c:Lcom/duoku/platform/k/a;

.field private d:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 238
    const/4 v0, 0x0

    iput v0, p0, Lcom/duoku/platform/k/e;->d:I

    .line 22
    return-void
.end method

.method static synthetic a()[I
    .registers 3

    .prologue
    .line 22
    sget-object v0, Lcom/duoku/platform/k/e;->e:[I

    if-eqz v0, :cond_5

    :goto_4
    return-object v0

    :cond_5
    invoke-static {}, Lcom/duoku/platform/c/b;->values()[Lcom/duoku/platform/c/b;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_c
    sget-object v1, Lcom/duoku/platform/c/b;->t:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_16} :catch_2c6

    :goto_16
    :try_start_16
    sget-object v1, Lcom/duoku/platform/c/b;->v:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_20} :catch_2c3

    :goto_20
    :try_start_20
    sget-object v1, Lcom/duoku/platform/c/b;->u:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_2a} :catch_2c0

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/duoku/platform/c/b;->e:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_33} :catch_2bd

    :goto_33
    :try_start_33
    sget-object v1, Lcom/duoku/platform/c/b;->m:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_3d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3d} :catch_2ba

    :goto_3d
    :try_start_3d
    sget-object v1, Lcom/duoku/platform/c/b;->k:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_47
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3d .. :try_end_47} :catch_2b7

    :goto_47
    :try_start_47
    sget-object v1, Lcom/duoku/platform/c/b;->d:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_50
    .catch Ljava/lang/NoSuchFieldError; {:try_start_47 .. :try_end_50} :catch_2b4

    :goto_50
    :try_start_50
    sget-object v1, Lcom/duoku/platform/c/b;->P:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_5a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_50 .. :try_end_5a} :catch_2b1

    :goto_5a
    :try_start_5a
    sget-object v1, Lcom/duoku/platform/c/b;->a:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_63
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5a .. :try_end_63} :catch_2ae

    :goto_63
    :try_start_63
    sget-object v1, Lcom/duoku/platform/c/b;->l:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_6d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_63 .. :try_end_6d} :catch_2ab

    :goto_6d
    :try_start_6d
    sget-object v1, Lcom/duoku/platform/c/b;->J:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_77
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6d .. :try_end_77} :catch_2a8

    :goto_77
    :try_start_77
    sget-object v1, Lcom/duoku/platform/c/b;->I:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_81
    .catch Ljava/lang/NoSuchFieldError; {:try_start_77 .. :try_end_81} :catch_2a5

    :goto_81
    :try_start_81
    sget-object v1, Lcom/duoku/platform/c/b;->H:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_8b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_81 .. :try_end_8b} :catch_2a2

    :goto_8b
    :try_start_8b
    sget-object v1, Lcom/duoku/platform/c/b;->G:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_95
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8b .. :try_end_95} :catch_29f

    :goto_95
    :try_start_95
    sget-object v1, Lcom/duoku/platform/c/b;->L:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_9f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_95 .. :try_end_9f} :catch_29c

    :goto_9f
    :try_start_9f
    sget-object v1, Lcom/duoku/platform/c/b;->N:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_a9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9f .. :try_end_a9} :catch_299

    :goto_a9
    :try_start_a9
    sget-object v1, Lcom/duoku/platform/c/b;->M:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_b3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a9 .. :try_end_b3} :catch_296

    :goto_b3
    :try_start_b3
    sget-object v1, Lcom/duoku/platform/c/b;->K:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_bd
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b3 .. :try_end_bd} :catch_293

    :goto_bd
    :try_start_bd
    sget-object v1, Lcom/duoku/platform/c/b;->O:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_c7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_bd .. :try_end_c7} :catch_290

    :goto_c7
    :try_start_c7
    sget-object v1, Lcom/duoku/platform/c/b;->j:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_d1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c7 .. :try_end_d1} :catch_28d

    :goto_d1
    :try_start_d1
    sget-object v1, Lcom/duoku/platform/c/b;->i:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_db
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d1 .. :try_end_db} :catch_28a

    :goto_db
    :try_start_db
    sget-object v1, Lcom/duoku/platform/c/b;->b:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_e4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_db .. :try_end_e4} :catch_287

    :goto_e4
    :try_start_e4
    sget-object v1, Lcom/duoku/platform/c/b;->f:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_ed
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e4 .. :try_end_ed} :catch_284

    :goto_ed
    :try_start_ed
    sget-object v1, Lcom/duoku/platform/c/b;->h:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_f7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_ed .. :try_end_f7} :catch_281

    :goto_f7
    :try_start_f7
    sget-object v1, Lcom/duoku/platform/c/b;->W:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_101
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f7 .. :try_end_101} :catch_27e

    :goto_101
    :try_start_101
    sget-object v1, Lcom/duoku/platform/c/b;->g:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_10a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_101 .. :try_end_10a} :catch_27b

    :goto_10a
    :try_start_10a
    sget-object v1, Lcom/duoku/platform/c/b;->aa:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_114
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10a .. :try_end_114} :catch_278

    :goto_114
    :try_start_114
    sget-object v1, Lcom/duoku/platform/c/b;->ac:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_11e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_114 .. :try_end_11e} :catch_275

    :goto_11e
    :try_start_11e
    sget-object v1, Lcom/duoku/platform/c/b;->Y:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_128
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11e .. :try_end_128} :catch_272

    :goto_128
    :try_start_128
    sget-object v1, Lcom/duoku/platform/c/b;->ab:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_132
    .catch Ljava/lang/NoSuchFieldError; {:try_start_128 .. :try_end_132} :catch_26f

    :goto_132
    :try_start_132
    sget-object v1, Lcom/duoku/platform/c/b;->V:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_13c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_132 .. :try_end_13c} :catch_26c

    :goto_13c
    :try_start_13c
    sget-object v1, Lcom/duoku/platform/c/b;->Z:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_146
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13c .. :try_end_146} :catch_269

    :goto_146
    :try_start_146
    sget-object v1, Lcom/duoku/platform/c/b;->X:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_150
    .catch Ljava/lang/NoSuchFieldError; {:try_start_146 .. :try_end_150} :catch_266

    :goto_150
    :try_start_150
    sget-object v1, Lcom/duoku/platform/c/b;->n:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_15a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_150 .. :try_end_15a} :catch_263

    :goto_15a
    :try_start_15a
    sget-object v1, Lcom/duoku/platform/c/b;->x:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_164
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15a .. :try_end_164} :catch_260

    :goto_164
    :try_start_164
    sget-object v1, Lcom/duoku/platform/c/b;->E:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_16e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_164 .. :try_end_16e} :catch_25d

    :goto_16e
    :try_start_16e
    sget-object v1, Lcom/duoku/platform/c/b;->y:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_178
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16e .. :try_end_178} :catch_25a

    :goto_178
    :try_start_178
    sget-object v1, Lcom/duoku/platform/c/b;->A:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_182
    .catch Ljava/lang/NoSuchFieldError; {:try_start_178 .. :try_end_182} :catch_257

    :goto_182
    :try_start_182
    sget-object v1, Lcom/duoku/platform/c/b;->z:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_18c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_182 .. :try_end_18c} :catch_254

    :goto_18c
    :try_start_18c
    sget-object v1, Lcom/duoku/platform/c/b;->C:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_196
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18c .. :try_end_196} :catch_251

    :goto_196
    :try_start_196
    sget-object v1, Lcom/duoku/platform/c/b;->B:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1a0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_196 .. :try_end_1a0} :catch_24e

    :goto_1a0
    :try_start_1a0
    sget-object v1, Lcom/duoku/platform/c/b;->D:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_1aa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a0 .. :try_end_1aa} :catch_24b

    :goto_1aa
    :try_start_1aa
    sget-object v1, Lcom/duoku/platform/c/b;->F:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_1b4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1aa .. :try_end_1b4} :catch_248

    :goto_1b4
    :try_start_1b4
    sget-object v1, Lcom/duoku/platform/c/b;->R:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_1be
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b4 .. :try_end_1be} :catch_245

    :goto_1be
    :try_start_1be
    sget-object v1, Lcom/duoku/platform/c/b;->Q:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_1c8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1be .. :try_end_1c8} :catch_243

    :goto_1c8
    :try_start_1c8
    sget-object v1, Lcom/duoku/platform/c/b;->T:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_1d2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c8 .. :try_end_1d2} :catch_241

    :goto_1d2
    :try_start_1d2
    sget-object v1, Lcom/duoku/platform/c/b;->S:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_1dc
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d2 .. :try_end_1dc} :catch_23f

    :goto_1dc
    :try_start_1dc
    sget-object v1, Lcom/duoku/platform/c/b;->U:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_1e6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1dc .. :try_end_1e6} :catch_23d

    :goto_1e6
    :try_start_1e6
    sget-object v1, Lcom/duoku/platform/c/b;->p:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_1f0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e6 .. :try_end_1f0} :catch_23b

    :goto_1f0
    :try_start_1f0
    sget-object v1, Lcom/duoku/platform/c/b;->o:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_1fa
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f0 .. :try_end_1fa} :catch_239

    :goto_1fa
    :try_start_1fa
    sget-object v1, Lcom/duoku/platform/c/b;->s:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_204
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1fa .. :try_end_204} :catch_237

    :goto_204
    :try_start_204
    sget-object v1, Lcom/duoku/platform/c/b;->c:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_20d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_204 .. :try_end_20d} :catch_235

    :goto_20d
    :try_start_20d
    sget-object v1, Lcom/duoku/platform/c/b;->r:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_217
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20d .. :try_end_217} :catch_233

    :goto_217
    :try_start_217
    sget-object v1, Lcom/duoku/platform/c/b;->q:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_221
    .catch Ljava/lang/NoSuchFieldError; {:try_start_217 .. :try_end_221} :catch_231

    :goto_221
    :try_start_221
    sget-object v1, Lcom/duoku/platform/c/b;->w:Lcom/duoku/platform/c/b;

    invoke-virtual {v1}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_22b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_221 .. :try_end_22b} :catch_22f

    :goto_22b
    sput-object v0, Lcom/duoku/platform/k/e;->e:[I

    goto/16 :goto_4

    :catch_22f
    move-exception v1

    goto :goto_22b

    :catch_231
    move-exception v1

    goto :goto_221

    :catch_233
    move-exception v1

    goto :goto_217

    :catch_235
    move-exception v1

    goto :goto_20d

    :catch_237
    move-exception v1

    goto :goto_204

    :catch_239
    move-exception v1

    goto :goto_1fa

    :catch_23b
    move-exception v1

    goto :goto_1f0

    :catch_23d
    move-exception v1

    goto :goto_1e6

    :catch_23f
    move-exception v1

    goto :goto_1dc

    :catch_241
    move-exception v1

    goto :goto_1d2

    :catch_243
    move-exception v1

    goto :goto_1c8

    :catch_245
    move-exception v1

    goto/16 :goto_1be

    :catch_248
    move-exception v1

    goto/16 :goto_1b4

    :catch_24b
    move-exception v1

    goto/16 :goto_1aa

    :catch_24e
    move-exception v1

    goto/16 :goto_1a0

    :catch_251
    move-exception v1

    goto/16 :goto_196

    :catch_254
    move-exception v1

    goto/16 :goto_18c

    :catch_257
    move-exception v1

    goto/16 :goto_182

    :catch_25a
    move-exception v1

    goto/16 :goto_178

    :catch_25d
    move-exception v1

    goto/16 :goto_16e

    :catch_260
    move-exception v1

    goto/16 :goto_164

    :catch_263
    move-exception v1

    goto/16 :goto_15a

    :catch_266
    move-exception v1

    goto/16 :goto_150

    :catch_269
    move-exception v1

    goto/16 :goto_146

    :catch_26c
    move-exception v1

    goto/16 :goto_13c

    :catch_26f
    move-exception v1

    goto/16 :goto_132

    :catch_272
    move-exception v1

    goto/16 :goto_128

    :catch_275
    move-exception v1

    goto/16 :goto_11e

    :catch_278
    move-exception v1

    goto/16 :goto_114

    :catch_27b
    move-exception v1

    goto/16 :goto_10a

    :catch_27e
    move-exception v1

    goto/16 :goto_101

    :catch_281
    move-exception v1

    goto/16 :goto_f7

    :catch_284
    move-exception v1

    goto/16 :goto_ed

    :catch_287
    move-exception v1

    goto/16 :goto_e4

    :catch_28a
    move-exception v1

    goto/16 :goto_db

    :catch_28d
    move-exception v1

    goto/16 :goto_d1

    :catch_290
    move-exception v1

    goto/16 :goto_c7

    :catch_293
    move-exception v1

    goto/16 :goto_bd

    :catch_296
    move-exception v1

    goto/16 :goto_b3

    :catch_299
    move-exception v1

    goto/16 :goto_a9

    :catch_29c
    move-exception v1

    goto/16 :goto_9f

    :catch_29f
    move-exception v1

    goto/16 :goto_95

    :catch_2a2
    move-exception v1

    goto/16 :goto_8b

    :catch_2a5
    move-exception v1

    goto/16 :goto_81

    :catch_2a8
    move-exception v1

    goto/16 :goto_77

    :catch_2ab
    move-exception v1

    goto/16 :goto_6d

    :catch_2ae
    move-exception v1

    goto/16 :goto_63

    :catch_2b1
    move-exception v1

    goto/16 :goto_5a

    :catch_2b4
    move-exception v1

    goto/16 :goto_50

    :catch_2b7
    move-exception v1

    goto/16 :goto_47

    :catch_2ba
    move-exception v1

    goto/16 :goto_3d

    :catch_2bd
    move-exception v1

    goto/16 :goto_33

    :catch_2c0
    move-exception v1

    goto/16 :goto_2a

    :catch_2c3
    move-exception v1

    goto/16 :goto_20

    :catch_2c6
    move-exception v1

    goto/16 :goto_16
.end method


# virtual methods
.method public a(IILjava/lang/Object;)V
    .registers 6

    .prologue
    .line 106
    iget v0, p0, Lcom/duoku/platform/k/e;->d:I

    const/16 v1, 0xfa1

    if-ne v0, v1, :cond_16

    .line 108
    sparse-switch p1, :sswitch_data_f0

    .line 127
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->C:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    .line 131
    :cond_16
    :goto_16
    iget v0, p0, Lcom/duoku/platform/k/e;->d:I

    const/16 v1, 0x1771

    if-ne v0, v1, :cond_2c

    .line 133
    sparse-switch p1, :sswitch_data_102

    .line 152
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->C:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    .line 156
    :cond_2c
    :goto_2c
    iget v0, p0, Lcom/duoku/platform/k/e;->d:I

    const/16 v1, 0x2329

    if-ne v0, v1, :cond_42

    .line 158
    sparse-switch p1, :sswitch_data_114

    .line 177
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->C:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    .line 181
    :cond_42
    :goto_42
    return-void

    .line 111
    :sswitch_43
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->o:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    goto :goto_16

    .line 115
    :sswitch_51
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->z:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    goto :goto_16

    .line 119
    :sswitch_5f
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->A:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    goto :goto_16

    .line 123
    :sswitch_6d
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->B:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    goto :goto_16

    .line 136
    :sswitch_7b
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->o:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    goto :goto_2c

    .line 140
    :sswitch_89
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->z:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    goto :goto_2c

    .line 144
    :sswitch_97
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->A:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    goto :goto_2c

    .line 148
    :sswitch_a5
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->B:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    goto/16 :goto_2c

    .line 161
    :sswitch_b4
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->o:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    goto :goto_42

    .line 165
    :sswitch_c2
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->z:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    goto/16 :goto_42

    .line 169
    :sswitch_d1
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->A:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    goto/16 :goto_42

    .line 173
    :sswitch_e0
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/b;->B:Lcom/duoku/platform/c/b;

    invoke-virtual {v0, v1, p3, p2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V

    goto/16 :goto_42

    .line 108
    nop

    :sswitch_data_f0
    .sparse-switch
        0x0 -> :sswitch_43
        0x1f8 -> :sswitch_6d
        0x3e9 -> :sswitch_51
        0x3ec -> :sswitch_5f
    .end sparse-switch

    .line 133
    :sswitch_data_102
    .sparse-switch
        0x0 -> :sswitch_7b
        0x1f8 -> :sswitch_a5
        0x3e9 -> :sswitch_89
        0x3ec -> :sswitch_97
    .end sparse-switch

    .line 158
    :sswitch_data_114
    .sparse-switch
        0x0 -> :sswitch_b4
        0x1f8 -> :sswitch_e0
        0x3e9 -> :sswitch_c2
        0x3ec -> :sswitch_d1
    .end sparse-switch
.end method

.method public a(ILcom/duoku/platform/IDKSDKCallBack;)V
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 194
    iput p1, p0, Lcom/duoku/platform/k/e;->d:I

    .line 195
    const/16 v0, 0xbb9

    if-ne p1, v0, :cond_15

    .line 197
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->q:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    .line 227
    :cond_14
    :goto_14
    return-void

    .line 199
    :cond_15
    const/16 v0, 0xfa1

    if-ne p1, v0, :cond_27

    .line 201
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->r:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_14

    .line 203
    :cond_27
    const/16 v0, 0x1389

    if-ne p1, v0, :cond_39

    .line 205
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->p:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_14

    .line 207
    :cond_39
    const/16 v0, 0x1771

    if-ne p1, v0, :cond_4b

    .line 209
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->s:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_14

    .line 211
    :cond_4b
    const/16 v0, 0x2329

    if-ne p1, v0, :cond_5d

    .line 213
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->t:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_14

    .line 215
    :cond_5d
    const/16 v0, 0x1b59

    if-ne p1, v0, :cond_6f

    .line 217
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->u:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_14

    .line 219
    :cond_6f
    const/16 v0, 0x1f41

    if-ne p1, v0, :cond_81

    .line 221
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->F:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_14

    .line 223
    :cond_81
    const/16 v0, 0x2711

    if-ne p1, v0, :cond_14

    .line 225
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->w:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_14
.end method

.method public a(Landroid/content/Context;Lcom/duoku/platform/c;)V
    .registers 4

    .prologue
    .line 243
    .line 245
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/duoku/platform/c;->b(I)V

    .line 246
    return-void
.end method

.method public a(Lcom/duoku/platform/c/c;Lcom/duoku/platform/c/b;Ljava/lang/Object;I)V
    .registers 8

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-static {}, Lcom/duoku/platform/k/e;->a()[I

    move-result-object v0

    invoke-virtual {p2}, Lcom/duoku/platform/c/b;->ordinal()I

    move-result v1

    aget v0, v0, v1

    sparse-switch v0, :sswitch_data_fa

    .line 100
    :goto_e
    return-void

    .line 39
    :sswitch_f
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->a:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_e

    .line 44
    :sswitch_1d
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->y:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_e

    .line 48
    :sswitch_2b
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->z:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_e

    .line 52
    :sswitch_39
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->A:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_e

    .line 56
    :sswitch_47
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->x:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, p3}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_e

    .line 60
    :sswitch_55
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->B:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_e

    .line 63
    :sswitch_63
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->C:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_e

    .line 66
    :sswitch_71
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->H:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_e

    .line 69
    :sswitch_7f
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->E:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto :goto_e

    .line 73
    :sswitch_8d
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->G:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 77
    :sswitch_9c
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->f:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, p3}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 81
    :sswitch_ab
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/c/a;->a()Lcom/duoku/platform/ui/DKContainerActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/ui/DKContainerActivity;->a()V

    .line 82
    invoke-static {}, Lcom/duoku/platform/b;->b()Lcom/duoku/platform/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/duoku/platform/b;->a()Lcom/duoku/platform/c/a;

    move-result-object v0

    sget-object v1, Lcom/duoku/platform/c/c;->x:Lcom/duoku/platform/c/c;

    invoke-virtual {v0, v1, v2}, Lcom/duoku/platform/c/a;->a(Lcom/duoku/platform/c/c;Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 86
    :sswitch_c9
    new-instance v0, Lcom/duoku/platform/k/b;

    invoke-direct {v0}, Lcom/duoku/platform/k/b;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/k/e;->a:Lcom/duoku/platform/k/b;

    .line 87
    iget-object v0, p0, Lcom/duoku/platform/k/e;->a:Lcom/duoku/platform/k/b;

    invoke-virtual {v0, p0, p4}, Lcom/duoku/platform/k/b;->a(Lcom/duoku/platform/k/d;I)V

    goto/16 :goto_e

    .line 90
    :sswitch_d7
    new-instance v0, Lcom/duoku/platform/k/c;

    invoke-direct {v0}, Lcom/duoku/platform/k/c;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/k/e;->b:Lcom/duoku/platform/k/c;

    .line 91
    iget-object v0, p0, Lcom/duoku/platform/k/e;->b:Lcom/duoku/platform/k/c;

    invoke-virtual {v0, p0, p4}, Lcom/duoku/platform/k/c;->a(Lcom/duoku/platform/k/d;I)V

    goto/16 :goto_e

    .line 94
    :sswitch_e5
    new-instance v0, Lcom/duoku/platform/k/a;

    invoke-direct {v0}, Lcom/duoku/platform/k/a;-><init>()V

    iput-object v0, p0, Lcom/duoku/platform/k/e;->c:Lcom/duoku/platform/k/a;

    .line 95
    iget-object v0, p0, Lcom/duoku/platform/k/e;->c:Lcom/duoku/platform/k/a;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, p0, v1, p4}, Lcom/duoku/platform/k/a;->a(Lcom/duoku/platform/k/d;II)V

    goto/16 :goto_e

    .line 36
    nop

    :sswitch_data_fa
    .sparse-switch
        0x2 -> :sswitch_ab
        0x7 -> :sswitch_47
        0xa -> :sswitch_9c
        0xe -> :sswitch_f
        0x19 -> :sswitch_c9
        0x1e -> :sswitch_d7
        0x1f -> :sswitch_e5
        0x21 -> :sswitch_1d
        0x22 -> :sswitch_2b
        0x23 -> :sswitch_39
        0x24 -> :sswitch_7f
        0x25 -> :sswitch_55
        0x26 -> :sswitch_63
        0x28 -> :sswitch_8d
        0x29 -> :sswitch_71
    .end sparse-switch
.end method

.class public final Lcom/tencent/map/b/d$a;
.super Landroid/telephony/PhoneStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/map/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Ljava/lang/reflect/Method;

.field private j:Ljava/lang/reflect/Method;

.field private k:Ljava/lang/reflect/Method;

.field private l:Ljava/lang/reflect/Method;

.field private m:Ljava/lang/reflect/Method;

.field private synthetic n:Lcom/tencent/map/b/d;


# direct methods
.method public constructor <init>(Lcom/tencent/map/b/d;II)V
    .registers 7

    const v2, 0x7fffffff

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    iput v0, p0, Lcom/tencent/map/b/d$a;->a:I

    iput v0, p0, Lcom/tencent/map/b/d$a;->b:I

    iput v0, p0, Lcom/tencent/map/b/d$a;->c:I

    iput v0, p0, Lcom/tencent/map/b/d$a;->d:I

    iput v0, p0, Lcom/tencent/map/b/d$a;->e:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/tencent/map/b/d$a;->f:I

    iput v2, p0, Lcom/tencent/map/b/d$a;->g:I

    iput v2, p0, Lcom/tencent/map/b/d$a;->h:I

    iput-object v1, p0, Lcom/tencent/map/b/d$a;->i:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/tencent/map/b/d$a;->j:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/tencent/map/b/d$a;->k:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/tencent/map/b/d$a;->l:Ljava/lang/reflect/Method;

    iput-object v1, p0, Lcom/tencent/map/b/d$a;->m:Ljava/lang/reflect/Method;

    iput p2, p0, Lcom/tencent/map/b/d$a;->b:I

    iput p3, p0, Lcom/tencent/map/b/d$a;->a:I

    return-void
.end method


# virtual methods
.method public final onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .registers 13

    const v5, 0x7fffffff

    const/4 v4, 0x3

    const/4 v3, -0x1

    const/4 v1, 0x0

    iput v3, p0, Lcom/tencent/map/b/d$a;->f:I

    iput v3, p0, Lcom/tencent/map/b/d$a;->e:I

    iput v3, p0, Lcom/tencent/map/b/d$a;->d:I

    iput v3, p0, Lcom/tencent/map/b/d$a;->c:I

    if-eqz p1, :cond_15

    iget v0, p0, Lcom/tencent/map/b/d$a;->a:I

    packed-switch v0, :pswitch_data_16c

    :cond_15
    :goto_15
    iget-object v10, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    new-instance v0, Lcom/tencent/map/b/d$b;

    iget-object v1, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    iget v2, p0, Lcom/tencent/map/b/d$a;->a:I

    iget v3, p0, Lcom/tencent/map/b/d$a;->b:I

    iget v4, p0, Lcom/tencent/map/b/d$a;->c:I

    iget v5, p0, Lcom/tencent/map/b/d$a;->d:I

    iget v6, p0, Lcom/tencent/map/b/d$a;->e:I

    iget v7, p0, Lcom/tencent/map/b/d$a;->f:I

    iget v8, p0, Lcom/tencent/map/b/d$a;->g:I

    iget v9, p0, Lcom/tencent/map/b/d$a;->h:I

    invoke-direct/range {v0 .. v9}, Lcom/tencent/map/b/d$b;-><init>(Lcom/tencent/map/b/d;IIIIIIII)V

    invoke-static {v10, v0}, Lcom/tencent/map/b/d;->a(Lcom/tencent/map/b/d;Lcom/tencent/map/b/d$b;)Lcom/tencent/map/b/d$b;

    iget-object v0, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    invoke-static {v0}, Lcom/tencent/map/b/d;->a(Lcom/tencent/map/b/d;)Lcom/tencent/map/b/d$c;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    invoke-static {v0}, Lcom/tencent/map/b/d;->a(Lcom/tencent/map/b/d;)Lcom/tencent/map/b/d$c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    invoke-static {v1}, Lcom/tencent/map/b/d;->b(Lcom/tencent/map/b/d;)Lcom/tencent/map/b/d$b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/map/b/d$c;->a(Lcom/tencent/map/b/d$b;)V

    :cond_48
    return-void

    :pswitch_49
    const/4 v0, 0x0

    :try_start_4a
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4c} :catch_9e

    :try_start_4c
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    if-gtz v0, :cond_65

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    if-gtz v0, :cond_65

    iget-object v0, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    invoke-static {v0}, Lcom/tencent/map/b/d;->d(Lcom/tencent/map/b/d;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_64} :catch_169

    move-object p1, v0

    :cond_65
    const/4 v0, 0x1

    :goto_66
    if-eqz v0, :cond_15

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    invoke-static {v0}, Lcom/tencent/map/b/d;->d(Lcom/tencent/map/b/d;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8b

    :try_start_76
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_8b

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/map/b/d$a;->c:I

    :cond_8b
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, p0, Lcom/tencent/map/b/d$a;->d:I

    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    iput v0, p0, Lcom/tencent/map/b/d$a;->e:I
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_97} :catch_a2

    :goto_97
    iget-object v0, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    invoke-static {v0}, Lcom/tencent/map/b/d;->c(Lcom/tencent/map/b/d;)V

    goto/16 :goto_15

    :catch_9e
    move-exception v2

    move-object p1, v0

    :goto_a0
    move v0, v1

    goto :goto_66

    :catch_a2
    move-exception v0

    iput v3, p0, Lcom/tencent/map/b/d$a;->e:I

    iput v3, p0, Lcom/tencent/map/b/d$a;->d:I

    iput v3, p0, Lcom/tencent/map/b/d$a;->c:I

    goto :goto_97

    :pswitch_aa
    if-eqz p1, :cond_15

    :try_start_ac
    iget-object v0, p0, Lcom/tencent/map/b/d$a;->i:Ljava/lang/reflect/Method;

    if-nez v0, :cond_105

    const-string v0, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBaseStationId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/map/b/d$a;->i:Ljava/lang/reflect/Method;

    const-string v0, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getSystemId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/map/b/d$a;->j:Ljava/lang/reflect/Method;

    const-string v0, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getNetworkId"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/map/b/d$a;->k:Ljava/lang/reflect/Method;

    const-string v0, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBaseStationLatitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/map/b/d$a;->l:Ljava/lang/reflect/Method;

    const-string v0, "android.telephony.cdma.CdmaCellLocation"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getBaseStationLongitude"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/map/b/d$a;->m:Ljava/lang/reflect/Method;

    :cond_105
    iget-object v0, p0, Lcom/tencent/map/b/d$a;->j:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/map/b/d$a;->c:I

    iget-object v0, p0, Lcom/tencent/map/b/d$a;->k:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/map/b/d$a;->d:I

    iget-object v0, p0, Lcom/tencent/map/b/d$a;->i:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/map/b/d$a;->e:I

    iget-object v0, p0, Lcom/tencent/map/b/d$a;->l:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/map/b/d$a;->g:I

    iget-object v0, p0, Lcom/tencent/map/b/d$a;->m:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/tencent/map/b/d$a;->h:I
    :try_end_15a
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_15a} :catch_15c

    goto/16 :goto_15

    :catch_15c
    move-exception v0

    iput v3, p0, Lcom/tencent/map/b/d$a;->e:I

    iput v3, p0, Lcom/tencent/map/b/d$a;->d:I

    iput v3, p0, Lcom/tencent/map/b/d$a;->c:I

    iput v5, p0, Lcom/tencent/map/b/d$a;->g:I

    iput v5, p0, Lcom/tencent/map/b/d$a;->h:I

    goto/16 :goto_15

    :catch_169
    move-exception v0

    goto/16 :goto_a0

    :pswitch_data_16c
    .packed-switch 0x1
        :pswitch_49
        :pswitch_aa
    .end packed-switch
.end method

.method public final onSignalStrengthChanged(I)V
    .registers 13

    iget v0, p0, Lcom/tencent/map/b/d$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    iget-object v0, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    invoke-static {v0}, Lcom/tencent/map/b/d;->c(Lcom/tencent/map/b/d;)V

    :cond_a
    iget v0, p0, Lcom/tencent/map/b/d$a;->f:I

    add-int/lit8 v0, v0, 0x71

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_24

    iget v0, p0, Lcom/tencent/map/b/d$a;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_25

    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, -0x71

    iput v0, p0, Lcom/tencent/map/b/d$a;->f:I

    :cond_24
    :goto_24
    return-void

    :cond_25
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, -0x71

    iput v0, p0, Lcom/tencent/map/b/d$a;->f:I

    iget-object v10, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    new-instance v0, Lcom/tencent/map/b/d$b;

    iget-object v1, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    iget v2, p0, Lcom/tencent/map/b/d$a;->a:I

    iget v3, p0, Lcom/tencent/map/b/d$a;->b:I

    iget v4, p0, Lcom/tencent/map/b/d$a;->c:I

    iget v5, p0, Lcom/tencent/map/b/d$a;->d:I

    iget v6, p0, Lcom/tencent/map/b/d$a;->e:I

    iget v7, p0, Lcom/tencent/map/b/d$a;->f:I

    iget v8, p0, Lcom/tencent/map/b/d$a;->g:I

    iget v9, p0, Lcom/tencent/map/b/d$a;->h:I

    invoke-direct/range {v0 .. v9}, Lcom/tencent/map/b/d$b;-><init>(Lcom/tencent/map/b/d;IIIIIIII)V

    invoke-static {v10, v0}, Lcom/tencent/map/b/d;->a(Lcom/tencent/map/b/d;Lcom/tencent/map/b/d$b;)Lcom/tencent/map/b/d$b;

    iget-object v0, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    invoke-static {v0}, Lcom/tencent/map/b/d;->a(Lcom/tencent/map/b/d;)Lcom/tencent/map/b/d$c;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    invoke-static {v0}, Lcom/tencent/map/b/d;->a(Lcom/tencent/map/b/d;)Lcom/tencent/map/b/d$c;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/b/d$a;->n:Lcom/tencent/map/b/d;

    invoke-static {v1}, Lcom/tencent/map/b/d;->b(Lcom/tencent/map/b/d;)Lcom/tencent/map/b/d$b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/map/b/d$c;->a(Lcom/tencent/map/b/d$b;)V

    goto :goto_24
.end method

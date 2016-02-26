.class public abstract Lcom/meizu/a/e;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/a/d;


# direct methods
.method public static a(Landroid/os/IBinder;)Lcom/meizu/a/d;
    .registers 3

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v0, "com.meizu.account.IAccountAuthService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/meizu/a/d;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/meizu/a/d;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/meizu/a/f;

    invoke-direct {v0, p0}, Lcom/meizu/a/f;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_58

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 42
    :sswitch_a
    const-string v0, "com.meizu.account.IAccountAuthService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v1

    .line 43
    goto :goto_9

    .line 47
    :sswitch_11
    const-string v2, "com.meizu.account.IAccountAuthService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_24

    .line 50
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 56
    :cond_24
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/a/b;->a(Landroid/os/IBinder;)Lcom/meizu/a/a;

    move-result-object v2

    .line 57
    invoke-virtual {p0, v0, v2}, Lcom/meizu/a/e;->a(Landroid/os/Bundle;Lcom/meizu/a/a;)V

    .line 58
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 59
    goto :goto_9

    .line 63
    :sswitch_34
    const-string v2, "com.meizu.account.IAccountAuthService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_47

    .line 66
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 72
    :cond_47
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/meizu/a/b;->a(Landroid/os/IBinder;)Lcom/meizu/a/a;

    move-result-object v2

    .line 73
    invoke-virtual {p0, v0, v2}, Lcom/meizu/a/e;->b(Landroid/os/Bundle;Lcom/meizu/a/a;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v0, v1

    .line 75
    goto :goto_9

    .line 38
    nop

    :sswitch_data_58
    .sparse-switch
        0x1 -> :sswitch_11
        0x2 -> :sswitch_34
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method

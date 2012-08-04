.class public Lcom/facebook/orca/users/UserWithIdentifier;
.super Ljava/lang/Object;
.source "UserWithIdentifier.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Ljavax/annotation/concurrent/Immutable;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/users/UserWithIdentifier;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/facebook/orca/users/User;

.field private final b:Lcom/facebook/orca/users/UserIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Lcom/facebook/orca/users/UserWithIdentifier$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/UserWithIdentifier$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/UserWithIdentifier;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v0, Lcom/facebook/orca/users/User;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User;

    iput-object v0, p0, Lcom/facebook/orca/users/UserWithIdentifier;->a:Lcom/facebook/orca/users/User;

    .line 26
    const-class v0, Lcom/facebook/orca/users/UserIdentifier;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserIdentifier;

    iput-object v0, p0, Lcom/facebook/orca/users/UserWithIdentifier;->b:Lcom/facebook/orca/users/UserIdentifier;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/UserWithIdentifier;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/orca/users/User;Lcom/facebook/orca/users/UserIdentifier;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/facebook/orca/users/UserWithIdentifier;->a:Lcom/facebook/orca/users/User;

    .line 21
    iput-object p2, p0, Lcom/facebook/orca/users/UserWithIdentifier;->b:Lcom/facebook/orca/users/UserIdentifier;

    .line 22
    return-void
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/users/User;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/facebook/orca/users/UserWithIdentifier;->a:Lcom/facebook/orca/users/User;

    return-object v0
.end method

.method public final b()Lcom/facebook/orca/users/UserIdentifier;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/users/UserWithIdentifier;->b:Lcom/facebook/orca/users/UserIdentifier;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/orca/users/UserWithIdentifier;->a:Lcom/facebook/orca/users/User;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    iget-object v0, p0, Lcom/facebook/orca/users/UserWithIdentifier;->b:Lcom/facebook/orca/users/UserIdentifier;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 61
    return-void
.end method

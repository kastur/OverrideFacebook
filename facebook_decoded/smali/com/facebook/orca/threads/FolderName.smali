.class public Lcom/facebook/orca/threads/FolderName;
.super Ljava/lang/Object;
.source "FolderName.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/orca/threads/FolderName;",
            ">;"
        }
    .end annotation
.end field

.field public static final a:Lcom/facebook/orca/threads/FolderName;

.field public static final b:Lcom/facebook/orca/threads/FolderName;

.field public static final c:Lcom/facebook/orca/threads/FolderName;

.field private static final d:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet",
            "<",
            "Lcom/facebook/orca/threads/FolderName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 15
    new-instance v0, Lcom/facebook/orca/threads/FolderName;

    const-string v1, "inbox"

    invoke-direct {v0, v1}, Lcom/facebook/orca/threads/FolderName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    .line 16
    new-instance v0, Lcom/facebook/orca/threads/FolderName;

    const-string v1, "other"

    invoke-direct {v0, v1}, Lcom/facebook/orca/threads/FolderName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    .line 17
    new-instance v0, Lcom/facebook/orca/threads/FolderName;

    const-string v1, "mms-sms"

    invoke-direct {v0, v1}, Lcom/facebook/orca/threads/FolderName;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/orca/threads/FolderName;->c:Lcom/facebook/orca/threads/FolderName;

    .line 19
    sget-object v0, Lcom/facebook/orca/threads/FolderName;->a:Lcom/facebook/orca/threads/FolderName;

    sget-object v1, Lcom/facebook/orca/threads/FolderName;->b:Lcom/facebook/orca/threads/FolderName;

    sget-object v2, Lcom/facebook/orca/threads/FolderName;->c:Lcom/facebook/orca/threads/FolderName;

    invoke-static {v0, v1, v2}, Lcom/google/common/collect/ImmutableSet;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/threads/FolderName;->d:Lcom/google/common/collect/ImmutableSet;

    .line 47
    new-instance v0, Lcom/facebook/orca/threads/FolderName$1;

    invoke-direct {v0}, Lcom/facebook/orca/threads/FolderName$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/threads/FolderName;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/threads/FolderName;->e:Ljava/lang/String;

    .line 31
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 13
    invoke-direct {p0, p1}, Lcom/facebook/orca/threads/FolderName;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/facebook/orca/threads/FolderName;->e:Ljava/lang/String;

    .line 27
    return-void
.end method

.method static synthetic a(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderName;
    .locals 1
    .parameter

    .prologue
    .line 13
    invoke-static {p0}, Lcom/facebook/orca/threads/FolderName;->b(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderName;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/orca/threads/FolderName;
    .locals 1
    .parameter

    .prologue
    .line 82
    new-instance v0, Lcom/facebook/orca/threads/FolderName;

    invoke-direct {v0, p0}, Lcom/facebook/orca/threads/FolderName;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/orca/threads/FolderName;->b(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderName;

    move-result-object v0

    return-object v0
.end method

.method private static b(Lcom/facebook/orca/threads/FolderName;)Lcom/facebook/orca/threads/FolderName;
    .locals 3
    .parameter

    .prologue
    .line 86
    sget-object v0, Lcom/facebook/orca/threads/FolderName;->d:Lcom/google/common/collect/ImmutableSet;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/FolderName;

    .line 87
    invoke-static {v0, p0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 91
    :goto_0
    return-object v0

    :cond_1
    move-object v0, p0

    goto :goto_0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/facebook/orca/threads/FolderName;->e:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 66
    if-ne p0, p1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return v0

    .line 67
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 69
    :cond_3
    check-cast p1, Lcom/facebook/orca/threads/FolderName;

    .line 71
    iget-object v2, p0, Lcom/facebook/orca/threads/FolderName;->e:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/facebook/orca/threads/FolderName;->e:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/orca/threads/FolderName;->e:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v2, p1, Lcom/facebook/orca/threads/FolderName;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/facebook/orca/threads/FolderName;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/threads/FolderName;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/facebook/orca/threads/FolderName;->e:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/orca/threads/FolderName;->e:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return-void
.end method

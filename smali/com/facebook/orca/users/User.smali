.class public Lcom/facebook/orca/users/User;
.super Ljava/lang/Object;
.source "User.java"

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
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Lcom/facebook/orca/users/User$Type;

.field private final c:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/facebook/orca/users/Name;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/facebook/orca/users/PicCropInfo;

.field private final i:Ljava/lang/String;

.field private final j:F

.field private final k:Lcom/facebook/orca/common/util/TriState;

.field private final l:Z

.field private final m:Lcom/facebook/orca/users/Birthday;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/lang/String;

.field private final p:Lcom/facebook/orca/users/LastActive;

.field private final q:Lcom/facebook/orca/users/UserKey;

.field private final r:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserIdentifier;",
            ">;"
        }
    .end annotation
.end field

.field private final s:Lcom/facebook/orca/users/UserFbidIdentifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 277
    new-instance v0, Lcom/facebook/orca/users/User$1;

    invoke-direct {v0}, Lcom/facebook/orca/users/User$1;-><init>()V

    sput-object v0, Lcom/facebook/orca/users/User;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/User$Type;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    .line 85
    new-instance v0, Lcom/facebook/orca/users/UserKey;

    iget-object v1, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    iget-object v2, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/users/User;->q:Lcom/facebook/orca/users/UserKey;

    .line 86
    const-class v0, Lcom/facebook/orca/users/UserEmailAddress;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    .line 88
    const-class v0, Lcom/facebook/orca/users/UserPhoneNumber;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    .line 90
    const-class v0, Lcom/facebook/orca/users/Name;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/Name;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->f:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    .line 93
    const-class v0, Lcom/facebook/orca/users/PicCropInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/PicCropInfo;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->h:Lcom/facebook/orca/users/PicCropInfo;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->i:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/User;->j:F

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/TriState;->valueOf(Ljava/lang/String;)Lcom/facebook/orca/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->k:Lcom/facebook/orca/common/util/TriState;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/orca/users/User;->l:Z

    .line 98
    const-class v0, Lcom/facebook/orca/users/Birthday;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/Birthday;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->m:Lcom/facebook/orca/users/Birthday;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->n:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->o:Ljava/lang/String;

    .line 101
    const-class v0, Lcom/facebook/orca/users/LastActive;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/LastActive;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->p:Lcom/facebook/orca/users/LastActive;

    .line 102
    invoke-direct {p0}, Lcom/facebook/orca/users/User;->A()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->s:Lcom/facebook/orca/users/UserFbidIdentifier;

    .line 103
    invoke-direct {p0}, Lcom/facebook/orca/users/User;->B()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->r:Lcom/google/common/collect/ImmutableList;

    .line 104
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;B)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/facebook/orca/users/User;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Lcom/facebook/orca/users/UserBuilder;)V
    .locals 3
    .parameter

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "id must not be null"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->a()Lcom/facebook/orca/users/User$Type;

    move-result-object v0

    const-string v1, "type must not be null"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/User$Type;

    iput-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    .line 55
    new-instance v0, Lcom/facebook/orca/users/UserKey;

    iget-object v1, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    iget-object v2, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/orca/users/UserKey;-><init>(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/facebook/orca/users/User;->q:Lcom/facebook/orca/users/UserKey;

    .line 56
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->c()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 57
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    .line 61
    :goto_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->d()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    .line 62
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->f()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    .line 66
    :goto_1
    invoke-static {p1}, Lcom/facebook/orca/users/User;->a(Lcom/facebook/orca/users/UserBuilder;)Lcom/facebook/orca/users/Name;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    .line 67
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->i()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->f:Ljava/lang/String;

    .line 68
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    .line 69
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->k()Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->h:Lcom/facebook/orca/users/PicCropInfo;

    .line 70
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->l()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->i:Ljava/lang/String;

    .line 71
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->m()F

    move-result v0

    iput v0, p0, Lcom/facebook/orca/users/User;->j:F

    .line 72
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->n()Lcom/facebook/orca/common/util/TriState;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->k:Lcom/facebook/orca/common/util/TriState;

    .line 73
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->o()Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/orca/users/User;->l:Z

    .line 74
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->p()Lcom/facebook/orca/users/Birthday;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->m:Lcom/facebook/orca/users/Birthday;

    .line 75
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->n:Ljava/lang/String;

    .line 76
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->r()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->o:Ljava/lang/String;

    .line 77
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->s()Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->p:Lcom/facebook/orca/users/LastActive;

    .line 78
    invoke-direct {p0}, Lcom/facebook/orca/users/User;->A()Lcom/facebook/orca/users/UserFbidIdentifier;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->s:Lcom/facebook/orca/users/UserFbidIdentifier;

    .line 79
    invoke-direct {p0}, Lcom/facebook/orca/users/User;->B()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->r:Lcom/google/common/collect/ImmutableList;

    .line 80
    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/orca/users/UserBuilder;->d()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    goto :goto_1
.end method

.method private A()Lcom/facebook/orca/users/UserFbidIdentifier;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    sget-object v1, Lcom/facebook/orca/users/User$Type;->FACEBOOK:Lcom/facebook/orca/users/User$Type;

    if-ne v0, v1, :cond_0

    .line 116
    new-instance v0, Lcom/facebook/orca/users/UserFbidIdentifier;

    iget-object v1, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/facebook/orca/users/UserFbidIdentifier;-><init>(Ljava/lang/String;)V

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private B()Lcom/google/common/collect/ImmutableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v0

    .line 124
    iget-object v1, p0, Lcom/facebook/orca/users/User;->s:Lcom/facebook/orca/users/UserFbidIdentifier;

    if-eqz v1, :cond_0

    .line 125
    iget-object v1, p0, Lcom/facebook/orca/users/User;->s:Lcom/facebook/orca/users/UserFbidIdentifier;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 128
    iget-object v1, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Iterable;)Lcom/google/common/collect/ImmutableList$Builder;

    .line 129
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lcom/facebook/orca/users/UserBuilder;)Lcom/facebook/orca/users/Name;
    .locals 4
    .parameter

    .prologue
    .line 107
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->h()Lcom/facebook/orca/users/Name;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->h()Lcom/facebook/orca/users/Name;

    move-result-object v0

    .line 110
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/orca/users/Name;

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/facebook/orca/users/UserBuilder;->e()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/facebook/orca/users/User$Type;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Lcom/facebook/orca/users/UserKey;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/facebook/orca/users/User;->q:Lcom/facebook/orca/users/UserKey;

    return-object v0
.end method

.method public final d()Lcom/facebook/orca/users/Name;
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 290
    const/4 v0, 0x0

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    invoke-virtual {v0}, Lcom/facebook/orca/users/Name;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lcom/facebook/orca/users/UserFbidIdentifier;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/orca/users/User;->s:Lcom/facebook/orca/users/UserFbidIdentifier;

    return-object v0
.end method

.method public final h()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final i()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 181
    iget-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    .prologue
    .line 185
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final k()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserEmailAddress;

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserEmailAddress;->a()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public final l()Z
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final m()Lcom/facebook/orca/users/UserPhoneNumber;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserPhoneNumber;

    goto :goto_0
.end method

.method public final n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final o()Ljava/lang/String;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/facebook/orca/users/User;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final p()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final q()Lcom/facebook/orca/users/PicCropInfo;
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/facebook/orca/users/User;->h:Lcom/facebook/orca/users/PicCropInfo;

    return-object v0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/facebook/orca/users/User;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final s()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserIdentifier;",
            ">;"
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/facebook/orca/users/User;->r:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public final t()F
    .locals 1

    .prologue
    .line 250
    iget v0, p0, Lcom/facebook/orca/users/User;->j:F

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 315
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    iget-object v1, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    iget-object v1, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    iget-object v1, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 319
    iget-object v1, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Lcom/facebook/orca/common/util/TriState;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/facebook/orca/users/User;->k:Lcom/facebook/orca/common/util/TriState;

    return-object v0
.end method

.method public final v()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lcom/facebook/orca/users/User;->l:Z

    return v0
.end method

.method public final w()Lcom/facebook/orca/users/Birthday;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/orca/users/User;->m:Lcom/facebook/orca/users/Birthday;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 295
    iget-object v0, p0, Lcom/facebook/orca/users/User;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcom/facebook/orca/users/User;->b:Lcom/facebook/orca/users/User$Type;

    invoke-virtual {v0}, Lcom/facebook/orca/users/User$Type;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 297
    iget-object v0, p0, Lcom/facebook/orca/users/User;->c:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 298
    iget-object v0, p0, Lcom/facebook/orca/users/User;->d:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 299
    iget-object v0, p0, Lcom/facebook/orca/users/User;->e:Lcom/facebook/orca/users/Name;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 300
    iget-object v0, p0, Lcom/facebook/orca/users/User;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    iget-object v0, p0, Lcom/facebook/orca/users/User;->g:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 302
    iget-object v0, p0, Lcom/facebook/orca/users/User;->h:Lcom/facebook/orca/users/PicCropInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 303
    iget-object v0, p0, Lcom/facebook/orca/users/User;->i:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 304
    iget v0, p0, Lcom/facebook/orca/users/User;->j:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 305
    iget-object v0, p0, Lcom/facebook/orca/users/User;->k:Lcom/facebook/orca/common/util/TriState;

    invoke-virtual {v0}, Lcom/facebook/orca/common/util/TriState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 306
    iget-boolean v0, p0, Lcom/facebook/orca/users/User;->l:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 307
    iget-object v0, p0, Lcom/facebook/orca/users/User;->m:Lcom/facebook/orca/users/Birthday;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 308
    iget-object v0, p0, Lcom/facebook/orca/users/User;->n:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 309
    iget-object v0, p0, Lcom/facebook/orca/users/User;->o:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcom/facebook/orca/users/User;->p:Lcom/facebook/orca/users/LastActive;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 311
    return-void

    .line 306
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/facebook/orca/users/User;->n:Ljava/lang/String;

    return-object v0
.end method

.method public final y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/facebook/orca/users/User;->o:Ljava/lang/String;

    return-object v0
.end method

.method public final z()Lcom/facebook/orca/users/LastActive;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/orca/users/User;->p:Lcom/facebook/orca/users/LastActive;

    return-object v0
.end method

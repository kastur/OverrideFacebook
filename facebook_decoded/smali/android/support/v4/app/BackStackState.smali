.class final Landroid/support/v4/app/BackStackState;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/support/v4/app/BackStackState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:[I

.field private b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I

.field private g:Ljava/lang/CharSequence;

.field private h:I

.field private i:Ljava/lang/CharSequence;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 149
    new-instance v0, Landroid/support/v4/app/BackStackState$1;

    invoke-direct {v0}, Landroid/support/v4/app/BackStackState$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/BackStackState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    .line 89
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    .line 91
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/BackStackRecord;)V
    .locals 8
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iget-object v0, p1, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v1, v0

    move v0, v3

    .line 42
    :goto_0
    if-eqz v1, :cond_1

    .line 43
    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v0, v2

    .line 44
    :cond_0
    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    goto :goto_0

    .line 46
    :cond_1
    iget v1, p1, Landroid/support/v4/app/BackStackRecord;->b:I

    mul-int/lit8 v1, v1, 0x7

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    .line 48
    iget-boolean v0, p1, Landroid/support/v4/app/BackStackRecord;->e:Z

    if-nez v0, :cond_2

    .line 49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not on back stack"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 52
    :cond_2
    iget-object v0, p1, Landroid/support/v4/app/BackStackRecord;->a:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v0

    move v0, v3

    .line 54
    :goto_1
    if-eqz v5, :cond_5

    .line 55
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v0, 0x1

    iget v4, v5, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    aput v4, v1, v0

    .line 56
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v1, v2, 0x1

    iget-object v4, v5, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    iget v4, v4, Landroid/support/v4/app/Fragment;->f:I

    aput v4, v0, v2

    .line 57
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v1, 0x1

    iget v4, v5, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    aput v4, v0, v1

    .line 58
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v1, v2, 0x1

    iget v4, v5, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    aput v4, v0, v2

    .line 59
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v1, 0x1

    iget v4, v5, Landroid/support/v4/app/BackStackRecord$Op;->g:I

    aput v4, v0, v1

    .line 60
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v2, 0x1

    iget v1, v5, Landroid/support/v4/app/BackStackRecord$Op;->h:I

    aput v1, v0, v2

    .line 61
    iget-object v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 62
    iget-object v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 63
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v1, v4, 0x1

    aput v6, v0, v4

    move v2, v3

    .line 64
    :goto_2
    if-ge v2, v6, :cond_3

    .line 65
    iget-object v7, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v4, v1, 0x1

    iget-object v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    iget v0, v0, Landroid/support/v4/app/Fragment;->f:I

    aput v0, v7, v1

    .line 64
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v1, v4

    goto :goto_2

    :cond_3
    move v0, v1

    .line 70
    :goto_3
    iget-object v1, v5, Landroid/support/v4/app/BackStackRecord$Op;->a:Landroid/support/v4/app/BackStackRecord$Op;

    move-object v5, v1

    goto :goto_1

    .line 68
    :cond_4
    iget-object v1, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v0, v4, 0x1

    aput v3, v1, v4

    goto :goto_3

    .line 72
    :cond_5
    iget v0, p1, Landroid/support/v4/app/BackStackRecord;->c:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    .line 73
    iget v0, p1, Landroid/support/v4/app/BackStackRecord;->d:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    .line 74
    iget-object v0, p1, Landroid/support/v4/app/BackStackRecord;->f:Ljava/lang/String;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    .line 75
    iget v0, p1, Landroid/support/v4/app/BackStackRecord;->g:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    .line 76
    iget v0, p1, Landroid/support/v4/app/BackStackRecord;->h:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    .line 77
    iget-object v0, p1, Landroid/support/v4/app/BackStackRecord;->i:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    .line 78
    iget v0, p1, Landroid/support/v4/app/BackStackRecord;->j:I

    iput v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    .line 79
    iget-object v0, p1, Landroid/support/v4/app/BackStackRecord;->k:Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    .line 80
    return-void
.end method


# virtual methods
.method public final a(Landroid/support/v4/app/FragmentManagerImpl;)Landroid/support/v4/app/BackStackRecord;
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x1

    const/4 v1, 0x0

    .line 95
    new-instance v4, Landroid/support/v4/app/BackStackRecord;

    invoke-direct {v4, p1}, Landroid/support/v4/app/BackStackRecord;-><init>(Landroid/support/v4/app/FragmentManagerImpl;)V

    move v0, v1

    .line 97
    :goto_0
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->a:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 98
    new-instance v5, Landroid/support/v4/app/BackStackRecord$Op;

    invoke-direct {v5}, Landroid/support/v4/app/BackStackRecord$Op;-><init>()V

    .line 99
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v2, v0

    iput v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->c:I

    .line 100
    iget-object v0, p1, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v6, v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 103
    iput-object v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->d:Landroid/support/v4/app/Fragment;

    .line 104
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v6, 0x1

    aget v0, v0, v6

    iput v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->e:I

    .line 105
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v2, 0x1

    aget v0, v0, v2

    iput v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->f:I

    .line 106
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v2, v3, 0x1

    aget v0, v0, v3

    iput v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->g:I

    .line 107
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v2, 0x1

    aget v0, v0, v2

    iput v0, v5, Landroid/support/v4/app/BackStackRecord$Op;->h:I

    .line 108
    iget-object v2, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v0, v3, 0x1

    aget v6, v2, v3

    .line 109
    if-lez v6, :cond_0

    .line 110
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v6}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, v5, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    move v2, v1

    .line 111
    :goto_1
    if-ge v2, v6, :cond_0

    .line 112
    iget-object v7, p1, Landroid/support/v4/app/FragmentManagerImpl;->b:Ljava/util/ArrayList;

    iget-object v8, p0, Landroid/support/v4/app/BackStackState;->a:[I

    add-int/lit8 v3, v0, 0x1

    aget v0, v8, v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 115
    iget-object v7, v5, Landroid/support/v4/app/BackStackRecord$Op;->i:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move v0, v3

    goto :goto_1

    .line 118
    :cond_0
    invoke-virtual {v4, v5}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$Op;)V

    goto :goto_0

    .line 120
    :cond_1
    iget v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    iput v0, v4, Landroid/support/v4/app/BackStackRecord;->c:I

    .line 121
    iget v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    iput v0, v4, Landroid/support/v4/app/BackStackRecord;->d:I

    .line 122
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    iput-object v0, v4, Landroid/support/v4/app/BackStackRecord;->f:Ljava/lang/String;

    .line 123
    iget v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    iput v0, v4, Landroid/support/v4/app/BackStackRecord;->g:I

    .line 124
    iput-boolean v9, v4, Landroid/support/v4/app/BackStackRecord;->e:Z

    .line 125
    iget v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    iput v0, v4, Landroid/support/v4/app/BackStackRecord;->h:I

    .line 126
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    iput-object v0, v4, Landroid/support/v4/app/BackStackRecord;->i:Ljava/lang/CharSequence;

    .line 127
    iget v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    iput v0, v4, Landroid/support/v4/app/BackStackRecord;->j:I

    .line 128
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    iput-object v0, v4, Landroid/support/v4/app/BackStackRecord;->k:Ljava/lang/CharSequence;

    .line 129
    invoke-virtual {v4, v9}, Landroid/support/v4/app/BackStackRecord;->b(I)V

    .line 130
    return-object v4
.end method

.method public final describeContents()I
    .locals 1

    .prologue
    .line 134
    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->a:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 139
    iget v0, p0, Landroid/support/v4/app/BackStackState;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Landroid/support/v4/app/BackStackState;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 142
    iget v0, p0, Landroid/support/v4/app/BackStackState;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Landroid/support/v4/app/BackStackState;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->g:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 145
    iget v0, p0, Landroid/support/v4/app/BackStackState;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v0, p0, Landroid/support/v4/app/BackStackState;->i:Ljava/lang/CharSequence;

    invoke-static {v0, p1, v1}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 147
    return-void
.end method

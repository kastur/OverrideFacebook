.class public Lcom/facebook/katana/model/FacebookUser;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_ID:J = -0x1L

.field public static final TAG:Ljava/lang/String; = "FacebookUser"


# instance fields
.field public final mCanPost:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "can_post"
    .end annotation
.end field

.field public final mCanPostKnown:Z

.field public final mDisplayName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "name"
        type = Lcom/facebook/katana/util/StringUtils$JMStrippedString;
    .end annotation
.end field

.field public final mFirstName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "first_name"
        type = Lcom/facebook/katana/util/StringUtils$JMStrippedString;
    .end annotation
.end field

.field public final mImageUrl:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "pic_square"
        type = Lcom/facebook/katana/util/StringUtils$JMStrippedString;
    .end annotation
.end field

.field public final mLastName:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "last_name"
        type = Lcom/facebook/katana/util/StringUtils$JMStrippedString;
    .end annotation
.end field

.field public final mUserId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "uid"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/facebook/katana/model/FacebookUser$1;

    invoke-direct {v0}, Lcom/facebook/katana/model/FacebookUser$1;-><init>()V

    sput-object v0, Lcom/facebook/katana/model/FacebookUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 152
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 153
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    .line 154
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUser;->mFirstName:Ljava/lang/String;

    .line 155
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUser;->mLastName:Ljava/lang/String;

    .line 156
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    .line 157
    iput-object v2, p0, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    .line 158
    iput-boolean v3, p0, Lcom/facebook/katana/model/FacebookUser;->mCanPost:Z

    .line 159
    iput-boolean v3, p0, Lcom/facebook/katana/model/FacebookUser;->mCanPostKnown:Z

    .line 160
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 138
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 139
    iput-wide p1, p0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    .line 140
    iput-object p3, p0, Lcom/facebook/katana/model/FacebookUser;->mFirstName:Ljava/lang/String;

    .line 141
    iput-object p4, p0, Lcom/facebook/katana/model/FacebookUser;->mLastName:Ljava/lang/String;

    .line 142
    iput-object p5, p0, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    .line 143
    iput-object p6, p0, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    .line 144
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/model/FacebookUser;->mCanPost:Z

    .line 145
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/katana/model/FacebookUser;->mCanPostKnown:Z

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookUser;->mFirstName:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookUser;->mLastName:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    .line 89
    const/4 v0, 0x2

    new-array v0, v0, [Z

    .line 90
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 91
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Lcom/facebook/katana/model/FacebookUser;->mCanPost:Z

    .line 92
    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/facebook/katana/model/FacebookUser;->mCanPostKnown:Z

    .line 93
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/String;)Lcom/facebook/katana/model/FacebookUser;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/katana/model/FacebookUser;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 175
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookUser;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 185
    :try_start_1
    const-string v2, "mDisplayName"

    invoke-virtual {v0, v2, p1}, Lcom/facebook/katana/model/FacebookUser;->a_(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/facebook/katana/util/jsonmirror/JMException; {:try_start_1 .. :try_end_1} :catch_2

    .line 190
    :goto_0
    return-object v0

    .line 179
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 181
    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0

    .line 187
    :catch_2
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method public static a(Ljava/lang/Class;Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/model/FacebookUser;
    .locals 2
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/model/FacebookUser;",
            ">;",
            "Lorg/codehaus/jackson/JsonParser;",
            ")",
            "Lcom/facebook/katana/model/FacebookUser;"
        }
    .end annotation

    .prologue
    .line 206
    invoke-static {p0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    move-result-object v0

    .line 207
    invoke-static {p1, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;

    move-result-object v0

    .line 209
    instance-of v1, v0, Lcom/facebook/katana/model/FacebookUser;

    if-eqz v1, :cond_0

    .line 210
    check-cast v0, Lcom/facebook/katana/model/FacebookUser;

    .line 212
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 225
    const-string v0, "FacebookUser"

    const-string v1, "display name was requested, but is null"

    invoke-static {v0, v1}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string v0, ""

    .line 228
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public final d()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 240
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 241
    const-string v1, "uid"

    iget-wide v2, p0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 242
    const-string v1, "first_name"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookUser;->mFirstName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    const-string v1, "last_name"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookUser;->mLastName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 244
    const-string v1, "name"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 245
    const-string v1, "pic_square"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookUser;->mImageUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 248
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 98
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookUser;->mUserId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 99
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookUser;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookUser;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 101
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookUser;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Z

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/facebook/katana/model/FacebookUser;->mCanPost:Z

    aput-boolean v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/facebook/katana/model/FacebookUser;->mCanPostKnown:Z

    aput-boolean v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 103
    return-void
.end method

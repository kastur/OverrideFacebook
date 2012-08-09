.class public Lcom/facebook/katana/model/FacebookEventFull;
.super Lcom/facebook/katana/model/FacebookEvent;
.source "FacebookEventFull.java"


# static fields
.field public static final KEY_VENUE_CITY:Ljava/lang/String; = "city"

.field public static final KEY_VENUE_COUNTRY:Ljava/lang/String; = "country"

.field public static final KEY_VENUE_STATE:Ljava/lang/String; = "state"

.field public static final KEY_VENUE_STREET:Ljava/lang/String; = "street"

.field static intStatusMapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;",
            ">;"
        }
    .end annotation
.end field

.field static statusStringMapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static stringStatusMapper:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mCreator:Lcom/facebook/katana/model/FacebookProfile;

.field protected mCreatorId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "creator"
    .end annotation
.end field

.field protected mDescription:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "description"
        type = Lcom/facebook/katana/util/StringUtils$JMStrippedString;
    .end annotation
.end field

.field protected mEventSubtype:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "event_subtype"
        type = Lcom/facebook/katana/util/StringUtils$JMStrippedString;
    .end annotation
.end field

.field protected mEventType:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "event_type"
        type = Lcom/facebook/katana/util/StringUtils$JMStrippedString;
    .end annotation
.end field

.field protected mHideGuestList:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "hide_guest_list"
    .end annotation
.end field

.field protected mHost:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "host"
        type = Lcom/facebook/katana/util/StringUtils$JMStrippedString;
    .end annotation
.end field

.field protected mLocation:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "location"
        type = Lcom/facebook/katana/util/StringUtils$JMStrippedString;
    .end annotation
.end field

.field protected mPicMedium:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "pic"
    .end annotation
.end field

.field protected mPicSmall:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "pic_small"
    .end annotation
.end field

.field protected mRsvpStatus:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

.field protected mTagline:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$ExplicitType;
        jsonFieldName = "tagline"
        type = Lcom/facebook/katana/util/StringUtils$JMStrippedString;
    .end annotation
.end field

.field protected mVenue:Ljava/util/Map;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "venue"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/model/FacebookEventFull;->intStatusMapper:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/model/FacebookEventFull;->stringStatusMapper:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/model/FacebookEventFull;->statusStringMapper:Ljava/util/Map;

    .line 68
    sget-object v0, Lcom/facebook/katana/model/FacebookEventFull;->stringStatusMapper:Ljava/util/Map;

    const-string v1, "attending"

    new-instance v2, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    sget-object v3, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->ATTENDING:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-direct {v2, v3}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;-><init>(Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/facebook/katana/model/FacebookEventFull;->stringStatusMapper:Ljava/util/Map;

    const-string v1, "unsure"

    new-instance v2, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    sget-object v3, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->UNSURE:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-direct {v2, v3}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;-><init>(Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/facebook/katana/model/FacebookEventFull;->stringStatusMapper:Ljava/util/Map;

    const-string v1, "declined"

    new-instance v2, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    sget-object v3, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->DECLINED:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-direct {v2, v3}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;-><init>(Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/facebook/katana/model/FacebookEventFull;->stringStatusMapper:Ljava/util/Map;

    const-string v1, "not_replied"

    new-instance v2, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    sget-object v3, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->NOT_REPLIED:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-direct {v2, v3}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;-><init>(Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/facebook/katana/model/FacebookEventFull;->stringStatusMapper:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    sget-object v3, Lcom/facebook/katana/model/FacebookEventFull;->intStatusMapper:Ljava/util/Map;

    new-instance v4, Ljava/lang/Integer;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;->a:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->ordinal()I

    move-result v1

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v1, Lcom/facebook/katana/model/FacebookEventFull;->statusStringMapper:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/facebook/katana/model/FacebookEvent;-><init>()V

    .line 54
    return-void
.end method

.method public static a(I)Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;
    .locals 2
    .parameter

    .prologue
    .line 94
    sget-object v0, Lcom/facebook/katana/model/FacebookEventFull;->intStatusMapper:Ljava/util/Map;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;
    .locals 1
    .parameter

    .prologue
    .line 88
    sget-object v0, Lcom/facebook/katana/model/FacebookEventFull;->stringStatusMapper:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    return-object v0
.end method

.method public static a(Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 82
    sget-object v0, Lcom/facebook/katana/model/FacebookEventFull;->statusStringMapper:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static a([B)Ljava/util/Map;
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 146
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 147
    new-instance v1, Ljava/io/ObjectInputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 150
    :try_start_0
    invoke-virtual {v1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 151
    :catch_0
    move-exception v0

    .line 154
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static a(Lorg/codehaus/jackson/JsonParser;Ljava/util/Map;)V
    .locals 5
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonParser;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 105
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->e()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    .line 109
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    invoke-static {v2, v1}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    move-object v2, v1

    move-object v1, v0

    .line 111
    :goto_0
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_7

    .line 113
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_0

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_5

    .line 114
    :cond_0
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->g()Ljava/lang/String;

    move-result-object v3

    .line 115
    const-string v4, "eid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "uid"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 118
    :cond_1
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v1, :cond_3

    .line 119
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->u()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V

    .line 112
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->a()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_0

    .line 121
    :cond_3
    new-instance v1, Ljava/lang/Long;

    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/Long;-><init>(Ljava/lang/String;)V

    goto :goto_1

    .line 123
    :cond_4
    const-string v4, "rsvp_status"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 124
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    invoke-static {v0, v2}, Lcom/facebook/katana/util/Assert;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 125
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->k()Ljava/lang/String;

    move-result-object v0

    .line 127
    sget-object v2, Lcom/facebook/katana/model/FacebookEventFull;->stringStatusMapper:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    goto :goto_1

    .line 129
    :cond_5
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v2, v3, :cond_6

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_2

    .line 131
    :cond_6
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonParser;->d()Lorg/codehaus/jackson/JsonParser;

    goto :goto_1

    .line 135
    :cond_7
    if-eqz v1, :cond_8

    .line 136
    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_8
    return-void
.end method

.method private static a(Ljava/util/Map;)[B
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/Serializable;",
            ">;)[B"
        }
    .end annotation

    .prologue
    .line 163
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 164
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 166
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 167
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static b(Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/model/FacebookEventFull;
    .locals 2
    .parameter

    .prologue
    .line 218
    const-class v0, Lcom/facebook/katana/model/FacebookEventFull;

    invoke-static {v0}, Lcom/facebook/katana/util/jsonmirror/JMAutogen;->a(Ljava/lang/Class;)Lcom/facebook/katana/util/jsonmirror/types/JMDict;

    move-result-object v0

    .line 219
    invoke-static {p0, v0}, Lcom/facebook/katana/util/jsonmirror/JMParser;->a(Lorg/codehaus/jackson/JsonParser;Lcom/facebook/katana/util/jsonmirror/types/JMBase;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    instance-of v1, v0, Lcom/facebook/katana/model/FacebookEventFull;

    if-eqz v1, :cond_0

    .line 222
    check-cast v0, Lcom/facebook/katana/model/FacebookEventFull;

    .line 224
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/ContentValues;)V
    .locals 4
    .parameter

    .prologue
    .line 348
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookEventFull;->mVenue:Ljava/util/Map;

    invoke-static {v0}, Lcom/facebook/katana/model/FacebookEventFull;->a(Ljava/util/Map;)[B

    move-result-object v0

    .line 350
    const-string v1, "event_id"

    iget-wide v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mEventId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 351
    const-string v1, "event_name"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    const-string v1, "tagline"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mTagline:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    const-string v1, "image_url"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mPicSmall:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string v1, "medium_image_url"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mPicMedium:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    const-string v1, "host"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mHost:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 356
    const-string v1, "description"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const-string v1, "event_type"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mEventType:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    const-string v1, "event_subtype"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mEventSubtype:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const-string v1, "start_time"

    iget-wide v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mStartTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 360
    const-string v1, "end_time"

    iget-wide v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mEndTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 361
    iget-object v1, p0, Lcom/facebook/katana/model/FacebookEventFull;->mCreator:Lcom/facebook/katana/model/FacebookProfile;

    if-eqz v1, :cond_0

    .line 362
    const-string v1, "creator_id"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mCreator:Lcom/facebook/katana/model/FacebookProfile;

    iget-wide v2, v2, Lcom/facebook/katana/model/FacebookProfile;->mId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 363
    const-string v1, "display_name"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mCreator:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v2, v2, Lcom/facebook/katana/model/FacebookProfile;->mDisplayName:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    const-string v1, "creator_image_url"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mCreator:Lcom/facebook/katana/model/FacebookProfile;

    iget-object v2, v2, Lcom/facebook/katana/model/FacebookProfile;->mImageUrl:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 366
    :cond_0
    const-string v1, "location"

    iget-object v2, p0, Lcom/facebook/katana/model/FacebookEventFull;->mLocation:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v1, "venue"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 368
    const-string v1, "hide_guest_list"

    iget-boolean v0, p0, Lcom/facebook/katana/model/FacebookEventFull;->mHideGuestList:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 369
    const-string v0, "rsvp_status"

    iget-object v1, p0, Lcom/facebook/katana/model/FacebookEventFull;->mRsvpStatus:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    iget-object v1, v1, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;->a:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;

    invoke-virtual {v1}, Lcom/facebook/katana/model/FacebookEventFull$RsvpStatusEnum;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 370
    return-void

    .line 368
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/katana/model/FacebookProfile;)V
    .locals 0
    .parameter

    .prologue
    .line 299
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookEventFull;->mCreator:Lcom/facebook/katana/model/FacebookProfile;

    .line 300
    return-void
.end method

.method public final b(Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;)V
    .locals 0
    .parameter

    .prologue
    .line 339
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookEventFull;->mRsvpStatus:Lcom/facebook/katana/model/FacebookEventFull$RsvpStatus;

    .line 340
    return-void
.end method

.method public final f()J
    .locals 2

    .prologue
    .line 283
    iget-wide v0, p0, Lcom/facebook/katana/model/FacebookEventFull;->mCreatorId:J

    return-wide v0
.end method

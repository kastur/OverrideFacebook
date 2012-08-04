.class public Lcom/facebook/orca/users/UserSerialization;
.super Ljava/lang/Object;
.source "UserSerialization.java"


# static fields
.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field private final a:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/text/SimpleDateFormat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 339
    const-string v0, "^https://"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/facebook/orca/users/UserSerialization;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/google/i18n/phonenumbers/PhoneNumberUtil;)V
    .locals 1
    .parameter

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/facebook/orca/users/UserSerialization$1;

    invoke-direct {v0, p0}, Lcom/facebook/orca/users/UserSerialization$1;-><init>(Lcom/facebook/orca/users/UserSerialization;)V

    iput-object v0, p0, Lcom/facebook/orca/users/UserSerialization;->a:Ljava/lang/ThreadLocal;

    .line 39
    new-instance v0, Lcom/facebook/orca/users/UserSerialization$2;

    invoke-direct {v0, p0}, Lcom/facebook/orca/users/UserSerialization$2;-><init>(Lcom/facebook/orca/users/UserSerialization;)V

    iput-object v0, p0, Lcom/facebook/orca/users/UserSerialization;->b:Ljava/lang/ThreadLocal;

    .line 47
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 342
    if-nez p0, :cond_1

    .line 343
    const/4 p0, 0x0

    .line 349
    :cond_0
    :goto_0
    return-object p0

    .line 345
    :cond_1
    sget-object v0, Lcom/facebook/orca/users/UserSerialization;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 346
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceFirst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method public static a(Lcom/google/common/collect/ImmutableList;)Lorg/codehaus/jackson/node/ArrayNode;
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;)",
            "Lorg/codehaus/jackson/node/ArrayNode;"
        }
    .end annotation

    .prologue
    .line 225
    new-instance v1, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 226
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserEmailAddress;

    .line 227
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserEmailAddress;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/codehaus/jackson/node/ArrayNode;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 229
    :cond_0
    return-object v1
.end method

.method public static a(Lcom/facebook/orca/users/LastActive;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 6
    .parameter

    .prologue
    .line 377
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 378
    const-string v1, "time"

    invoke-virtual {p0}, Lcom/facebook/orca/users/LastActive;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;J)V

    .line 379
    const-string v1, "active"

    invoke-virtual {p0}, Lcom/facebook/orca/users/LastActive;->b()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    .line 380
    return-object v0
.end method

.method public static a(Lcom/facebook/orca/users/PicCropInfo;)Lorg/codehaus/jackson/node/ObjectNode;
    .locals 3
    .parameter

    .prologue
    .line 185
    new-instance v0, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v0, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 186
    const-string v1, "uri"

    invoke-virtual {p0}, Lcom/facebook/orca/users/PicCropInfo;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    const-string v1, "width"

    invoke-virtual {p0}, Lcom/facebook/orca/users/PicCropInfo;->c()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 188
    const-string v1, "height"

    invoke-virtual {p0}, Lcom/facebook/orca/users/PicCropInfo;->d()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 189
    const-string v1, "left"

    invoke-virtual {p0}, Lcom/facebook/orca/users/PicCropInfo;->e()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 190
    const-string v1, "right"

    invoke-virtual {p0}, Lcom/facebook/orca/users/PicCropInfo;->g()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 191
    const-string v1, "top"

    invoke-virtual {p0}, Lcom/facebook/orca/users/PicCropInfo;->f()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 192
    const-string v1, "bottom"

    invoke-virtual {p0}, Lcom/facebook/orca/users/PicCropInfo;->h()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;F)V

    .line 193
    return-object v0
.end method

.method private b(Lcom/facebook/orca/users/User$Type;Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/User;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 59
    new-instance v1, Lcom/facebook/orca/users/UserBuilder;

    invoke-direct {v1}, Lcom/facebook/orca/users/UserBuilder;-><init>()V

    .line 61
    const-string v0, "uid"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "Missing id field on profile"

    invoke-static {v0, v2}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 62
    const-string v0, "uid"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 63
    if-nez v0, :cond_0

    .line 64
    const-string v0, "id"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 66
    :cond_0
    invoke-virtual {v1, p1, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/User$Type;Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    .line 68
    const-string v0, "contact_email"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/codehaus/jackson/JsonNode;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 70
    new-instance v0, Lcom/facebook/orca/users/UserEmailAddress;

    const-string v2, "contact_email"

    invoke-virtual {p2, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v4}, Lcom/facebook/orca/users/UserEmailAddress;-><init>(Ljava/lang/String;I)V

    .line 72
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->a(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 78
    :cond_1
    :goto_0
    const-string v0, "phones"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->a(Lorg/codehaus/jackson/JsonNode;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    const-string v0, "phones"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserSerialization;->c(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->b(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    .line 82
    :cond_2
    invoke-static {p2}, Lcom/facebook/orca/users/UserSerialization;->e(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/Name;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Name;)Lcom/facebook/orca/users/UserBuilder;

    .line 83
    invoke-direct {p0, p2}, Lcom/facebook/orca/users/UserSerialization;->f(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/Birthday;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/Birthday;)Lcom/facebook/orca/users/UserBuilder;

    .line 85
    const-string v0, "pic_square"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 86
    const-string v0, "pic_square"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserSerialization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->d(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    .line 88
    :cond_3
    const-string v0, "pic_big"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 89
    const-string v0, "pic_big"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserSerialization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->e(Ljava/lang/String;)Lcom/facebook/orca/users/UserBuilder;

    .line 91
    :cond_4
    const-string v0, "pic_crop"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 92
    const-string v0, "pic_crop"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/orca/users/UserSerialization;->a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/PicCropInfo;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/PicCropInfo;)Lcom/facebook/orca/users/UserBuilder;

    .line 94
    :cond_5
    const-string v0, "rank"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 95
    const-string v0, "rank"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->a(F)Lcom/facebook/orca/users/UserBuilder;

    .line 97
    :cond_6
    const-string v0, "is_pushable"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 98
    const-string v0, "is_pushable"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    sget-object v0, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/common/util/TriState;)Lcom/facebook/orca/users/UserBuilder;

    .line 103
    :goto_2
    const-string v0, "affiliations"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 105
    const-string v0, "affiliations"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 107
    const-string v3, "nid"

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v3

    const-wide/32 v5, 0x30186a0

    cmp-long v0, v3, v5

    if-nez v0, :cond_7

    .line 108
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Z)V

    goto :goto_3

    .line 73
    :cond_8
    const-string v0, "emails"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    const-string v0, "emails"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserSerialization;->b(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Ljava/util/List;)Lcom/facebook/orca/users/UserBuilder;

    goto/16 :goto_0

    .line 98
    :cond_9
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    goto :goto_1

    .line 101
    :cond_a
    sget-object v0, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/common/util/TriState;)Lcom/facebook/orca/users/UserBuilder;

    goto :goto_2

    .line 113
    :cond_b
    const-string v0, "is_employee"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->c(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Z)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Z)V

    .line 115
    :cond_c
    const-string v0, "last_active"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 116
    const-string v0, "last_active"

    invoke-virtual {p2, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 117
    invoke-static {v0}, Lcom/facebook/orca/users/UserSerialization;->d(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/LastActive;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/users/UserBuilder;->a(Lcom/facebook/orca/users/LastActive;)Lcom/facebook/orca/users/UserBuilder;

    .line 119
    :cond_d
    invoke-virtual {v1}, Lcom/facebook/orca/users/UserBuilder;->t()Lcom/facebook/orca/users/User;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserEmailAddress;",
            ">;"
        }
    .end annotation

    .prologue
    .line 233
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 234
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 235
    new-instance v3, Lcom/facebook/orca/users/UserEmailAddress;

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Lcom/facebook/orca/users/UserEmailAddress;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v3}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 237
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

.method public static b(Lcom/google/common/collect/ImmutableList;)Lorg/codehaus/jackson/JsonNode;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;)",
            "Lorg/codehaus/jackson/JsonNode;"
        }
    .end annotation

    .prologue
    .line 281
    new-instance v2, Lorg/codehaus/jackson/node/ArrayNode;

    sget-object v0, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v2, v0}, Lorg/codehaus/jackson/node/ArrayNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 282
    invoke-virtual {p0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/users/UserPhoneNumber;

    .line 283
    new-instance v4, Lorg/codehaus/jackson/node/ObjectNode;

    sget-object v1, Lorg/codehaus/jackson/node/JsonNodeFactory;->a:Lorg/codehaus/jackson/node/JsonNodeFactory;

    invoke-direct {v4, v1}, Lorg/codehaus/jackson/node/ObjectNode;-><init>(Lorg/codehaus/jackson/node/JsonNodeFactory;)V

    .line 284
    const-string v1, "full_number"

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    const-string v1, "display_number"

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->g()Lcom/facebook/orca/common/util/TriState;

    move-result-object v1

    sget-object v5, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    if-eq v1, v5, :cond_0

    .line 287
    const-string v5, "is_verified"

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->g()Lcom/facebook/orca/common/util/TriState;

    move-result-object v1

    sget-object v6, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    if-ne v1, v6, :cond_1

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v4, v5, v1}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;Z)V

    .line 289
    :cond_0
    const-string v1, "android_type"

    invoke-virtual {v0}, Lcom/facebook/orca/users/UserPhoneNumber;->f()I

    move-result v0

    invoke-virtual {v4, v1, v0}, Lorg/codehaus/jackson/node/ObjectNode;->a(Ljava/lang/String;I)V

    .line 290
    invoke-virtual {v2, v4}, Lorg/codehaus/jackson/node/ArrayNode;->a(Lorg/codehaus/jackson/JsonNode;)V

    goto :goto_0

    .line 287
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 292
    :cond_2
    return-object v2
.end method

.method public static c(Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/UserPhoneNumber;",
            ">;"
        }
    .end annotation

    .prologue
    .line 241
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v5

    .line 242
    invoke-virtual {p0}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 245
    const-string v1, "full_number"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 247
    const-string v1, "full_number"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 248
    const-string v1, "display_number"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 256
    :goto_1
    sget-object v3, Lcom/facebook/orca/common/util/TriState;->UNSET:Lcom/facebook/orca/common/util/TriState;

    .line 257
    const-string v4, "is_verified"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 258
    const-string v3, "is_verified"

    invoke-virtual {v0, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-virtual {v3}, Lorg/codehaus/jackson/JsonNode;->p()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/facebook/orca/common/util/TriState;->YES:Lcom/facebook/orca/common/util/TriState;

    .line 260
    :cond_0
    :goto_2
    const/4 v4, 0x0

    .line 261
    const-string v7, "android_type"

    invoke-virtual {v0, v7}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 262
    const-string v4, "android_type"

    invoke-virtual {v0, v4}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v0

    .line 275
    :goto_3
    new-instance v4, Lcom/facebook/orca/users/UserPhoneNumber;

    invoke-direct {v4, v1, v2, v0, v3}, Lcom/facebook/orca/users/UserPhoneNumber;-><init>(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/orca/common/util/TriState;)V

    invoke-virtual {v5, v4}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 251
    :cond_1
    const-string v1, "country_code"

    invoke-virtual {v0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 252
    const-string v2, "number"

    invoke-virtual {v0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v2, v1

    .line 254
    goto :goto_1

    .line 258
    :cond_2
    sget-object v3, Lcom/facebook/orca/common/util/TriState;->NO:Lcom/facebook/orca/common/util/TriState;

    goto :goto_2

    .line 264
    :cond_3
    const-string v7, "type"

    invoke-virtual {v0, v7}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 265
    const-string v7, "type"

    invoke-virtual {v0, v7}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 266
    const-string v7, "other_phone"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 267
    const/4 v0, 0x7

    goto :goto_3

    .line 268
    :cond_4
    const-string v7, "cell"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 269
    const/4 v0, 0x2

    goto :goto_3

    .line 277
    :cond_5
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0

    :cond_6
    move v0, v4

    goto :goto_3
.end method

.method public static d(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/LastActive;
    .locals 5
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 359
    if-nez p0, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-object v0

    .line 362
    :cond_1
    const-string v1, "time"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "active"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 365
    new-instance v0, Lcom/facebook/orca/users/LastActive;

    const-string v1, "time"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->c(Lorg/codehaus/jackson/JsonNode;)J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const-string v3, "active"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/orca/common/util/JSONUtil;->f(Lorg/codehaus/jackson/JsonNode;)Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/orca/users/LastActive;-><init>(JZ)V

    goto :goto_0
.end method

.method private static e(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/Name;
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 197
    .line 200
    const-string v0, "first_name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 201
    const-string v0, "first_name"

    invoke-virtual {p0, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_0
    const-string v2, "last_name"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    const-string v2, "last_name"

    invoke-virtual {p0, v2}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v2

    .line 206
    :goto_1
    const-string v3, "name"

    invoke-virtual {p0, v3}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    const-string v1, "name"

    invoke-virtual {p0, v1}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v1

    .line 209
    :cond_0
    new-instance v3, Lcom/facebook/orca/users/Name;

    invoke-direct {v3, v0, v2, v1}, Lcom/facebook/orca/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_1
    move-object v2, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method private f(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/Birthday;
    .locals 5
    .parameter

    .prologue
    const/4 v1, 0x0

    .line 297
    .line 300
    const-string v0, "birthday_date"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    .line 301
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 302
    invoke-virtual {v0}, Lorg/codehaus/jackson/JsonNode;->n()Ljava/lang/String;

    move-result-object v3

    .line 306
    iget-object v0, p0, Lcom/facebook/orca/users/UserSerialization;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 307
    const/4 v0, 0x1

    move-object v4, v2

    .line 313
    :goto_0
    if-eqz v4, :cond_2

    .line 314
    invoke-virtual {v4}, Ljava/util/Date;->getMonth()I

    move-result v2

    add-int/lit8 v3, v2, 0x1

    .line 315
    invoke-virtual {v4}, Ljava/util/Date;->getDate()I

    move-result v2

    .line 316
    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {v4}, Ljava/util/Date;->getYear()I

    move-result v0

    add-int/lit16 v0, v0, 0x76c

    move v1, v2

    move v2, v3

    .line 322
    :goto_1
    new-instance v3, Lcom/facebook/orca/users/Birthday;

    invoke-direct {v3, v2, v1, v0}, Lcom/facebook/orca/users/Birthday;-><init>(III)V

    return-object v3

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/users/UserSerialization;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/text/ParsePosition;

    invoke-direct {v2, v1}, Ljava/text/ParsePosition;-><init>(I)V

    invoke-virtual {v0, v3, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v0

    move-object v4, v0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    move v1, v2

    move v2, v3

    goto :goto_1

    :cond_2
    move v0, v1

    move v2, v1

    goto :goto_1
.end method


# virtual methods
.method public final a(Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/PicCropInfo;
    .locals 9
    .parameter

    .prologue
    .line 169
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "left"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "right"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "top"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->b(Lorg/codehaus/jackson/JsonNode;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/users/UserSerialization;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    const-string v0, "width"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v2

    .line 174
    const-string v0, "height"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->d(Lorg/codehaus/jackson/JsonNode;)I

    move-result v3

    .line 175
    const-string v0, "left"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v4

    double-to-float v4, v4

    .line 176
    const-string v0, "right"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v5

    double-to-float v6, v5

    .line 177
    const-string v0, "top"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v7

    double-to-float v5, v7

    .line 178
    const-string v0, "bottom"

    invoke-virtual {p1, v0}, Lorg/codehaus/jackson/JsonNode;->a(Ljava/lang/String;)Lorg/codehaus/jackson/JsonNode;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/common/util/JSONUtil;->e(Lorg/codehaus/jackson/JsonNode;)D

    move-result-wide v7

    double-to-float v7, v7

    .line 179
    new-instance v0, Lcom/facebook/orca/users/PicCropInfo;

    invoke-direct/range {v0 .. v7}, Lcom/facebook/orca/users/PicCropInfo;-><init>(Ljava/lang/String;IIFFFF)V

    .line 181
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a(Lcom/facebook/orca/users/User$Type;Lorg/codehaus/jackson/JsonNode;)Lcom/google/common/collect/ImmutableList;
    .locals 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/orca/users/User$Type;",
            "Lorg/codehaus/jackson/JsonNode;",
            ")",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/facebook/orca/users/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 51
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->g()Lcom/google/common/collect/ImmutableList$Builder;

    move-result-object v1

    .line 52
    invoke-virtual {p2}, Lorg/codehaus/jackson/JsonNode;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/codehaus/jackson/JsonNode;

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/facebook/orca/users/UserSerialization;->b(Lcom/facebook/orca/users/User$Type;Lorg/codehaus/jackson/JsonNode;)Lcom/facebook/orca/users/User;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/common/collect/ImmutableList$Builder;->b(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList$Builder;

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList$Builder;->a()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    return-object v0
.end method

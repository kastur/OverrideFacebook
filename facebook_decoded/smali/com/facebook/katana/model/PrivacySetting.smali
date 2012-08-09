.class public Lcom/facebook/katana/model/PrivacySetting;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "PrivacySetting.java"


# static fields
.field public static final ALL_FRIENDS:Ljava/lang/String; = "ALL_FRIENDS"

.field public static final CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final DEFAULT:Ljava/lang/String; = "DEFAULT"

.field public static final EVERYONE:Ljava/lang/String; = "EVERYONE"

.field public static final FACEBOOK_GROUP_ID:Ljava/lang/String; = "114000975315193"

.field public static final FB_ONLY:Lcom/facebook/katana/model/PrivacySetting; = null

.field public static final FRIENDS_OF_FRIENDS:Ljava/lang/String; = "FRIENDS_OF_FRIENDS"

.field public static final NETWORKS_FRIENDS:Ljava/lang/String; = "NETWORKS_FRIENDS"

.field public static final ONLY_ME:Ljava/lang/String; = "SELF"

.field public static final SOME_FRIENDS:Ljava/lang/String; = "SOME_FRIENDS"


# instance fields
.field public final allow:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "allow"
    .end annotation
.end field

.field public final deny:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "deny"
    .end annotation
.end field

.field public final description:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "description"
    .end annotation
.end field

.field public final friends:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "friends"
    .end annotation
.end field

.field public final name:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "name"
    .end annotation
.end field

.field public final networks:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "networks"
    .end annotation
.end field

.field public final objects:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "objects"
    .end annotation
.end field

.field public final value:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "value"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 56
    new-instance v0, Lcom/facebook/katana/model/PrivacySetting;

    const-string v2, "CUSTOM"

    const-string v3, "Facebook"

    const-string v7, "114000975315193"

    move-object v4, v1

    move-object v5, v1

    move-object v6, v1

    move-object v8, v1

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/model/PrivacySetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/facebook/katana/model/PrivacySetting;->FB_ONLY:Lcom/facebook/katana/model/PrivacySetting;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 63
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->name:Ljava/lang/String;

    .line 64
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    .line 65
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->description:Ljava/lang/String;

    .line 66
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->allow:Ljava/lang/String;

    .line 67
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->deny:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->networks:Ljava/lang/String;

    .line 69
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->objects:Ljava/lang/String;

    .line 70
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->friends:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 75
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->name:Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    .line 77
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->description:Ljava/lang/String;

    .line 78
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->allow:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->deny:Ljava/lang/String;

    .line 80
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->networks:Ljava/lang/String;

    .line 81
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->objects:Ljava/lang/String;

    .line 82
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->friends:Ljava/lang/String;

    .line 83
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const/4 v0, 0x0

    .line 87
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 88
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->name:Ljava/lang/String;

    .line 89
    iput-object p2, p0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    .line 90
    iput-object p3, p0, Lcom/facebook/katana/model/PrivacySetting;->description:Ljava/lang/String;

    .line 91
    iput-object p4, p0, Lcom/facebook/katana/model/PrivacySetting;->allow:Ljava/lang/String;

    .line 92
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->deny:Ljava/lang/String;

    .line 93
    iput-object v0, p0, Lcom/facebook/katana/model/PrivacySetting;->networks:Ljava/lang/String;

    .line 94
    iput-object p7, p0, Lcom/facebook/katana/model/PrivacySetting;->objects:Ljava/lang/String;

    .line 95
    iput-object p8, p0, Lcom/facebook/katana/model/PrivacySetting;->friends:Ljava/lang/String;

    .line 96
    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/util/Set;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 141
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 143
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    :cond_0
    return-object v0

    .line 147
    :cond_1
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 148
    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v4, v2, v1

    .line 149
    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 134
    invoke-static {p0}, Lcom/facebook/katana/model/PrivacySetting;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v0

    .line 135
    invoke-static {p1}, Lcom/facebook/katana/model/PrivacySetting;->a(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 102
    instance-of v2, p1, Lcom/facebook/katana/model/PrivacySetting;

    if-nez v2, :cond_1

    .line 118
    :cond_0
    :goto_0
    return v0

    .line 105
    :cond_1
    check-cast p1, Lcom/facebook/katana/model/PrivacySetting;

    .line 108
    iget-object v2, p0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 113
    const-string v2, "CUSTOM"

    iget-object v3, p0, Lcom/facebook/katana/model/PrivacySetting;->value:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 114
    goto :goto_0

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/facebook/katana/model/PrivacySetting;->friends:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/katana/model/PrivacySetting;->friends:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/katana/util/StringUtils;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/katana/model/PrivacySetting;->allow:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/katana/model/PrivacySetting;->allow:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/katana/model/PrivacySetting;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/katana/model/PrivacySetting;->deny:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/katana/model/PrivacySetting;->deny:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/katana/model/PrivacySetting;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/katana/model/PrivacySetting;->networks:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/katana/model/PrivacySetting;->networks:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/katana/model/PrivacySetting;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/facebook/katana/model/PrivacySetting;->objects:Ljava/lang/String;

    iget-object v3, p1, Lcom/facebook/katana/model/PrivacySetting;->objects:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/facebook/katana/model/PrivacySetting;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    return v0
.end method

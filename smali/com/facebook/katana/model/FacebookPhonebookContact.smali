.class public Lcom/facebook/katana/model/FacebookPhonebookContact;
.super Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;
.source "FacebookPhonebookContact.java"


# instance fields
.field public final email:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "email"
    .end annotation
.end field

.field public emails:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final isFriend:Z
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "is_friend"
    .end annotation
.end field

.field public name:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "name"
    .end annotation
.end field

.field public final phone:Ljava/lang/String;
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "cell"
    .end annotation
.end field

.field public phones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final recordId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "record_id"
    .end annotation
.end field

.field public final userId:J
    .annotation runtime Lcom/facebook/katana/util/jsonmirror/JMAutogen$InferredType;
        jsonFieldName = "uid"
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    const/4 v1, 0x0

    .line 53
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 54
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->name:Ljava/lang/String;

    .line 55
    iput-wide v2, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->recordId:J

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->isFriend:Z

    .line 57
    iput-wide v2, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->userId:J

    .line 58
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->phone:Ljava/lang/String;

    .line 59
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->phones:Ljava/util/List;

    .line 60
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->email:Ljava/lang/String;

    .line 61
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->emails:Ljava/util/List;

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JLjava/util/List;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 91
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->name:Ljava/lang/String;

    .line 93
    iput-wide p2, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->recordId:J

    .line 94
    iput-object p4, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->emails:Ljava/util/List;

    .line 95
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->emails:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->emails:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->emails:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->email:Ljava/lang/String;

    .line 101
    :goto_0
    iput-object p5, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->phones:Ljava/util/List;

    .line 102
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->phones:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->phones:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->phones:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->phone:Ljava/lang/String;

    .line 109
    :goto_1
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->userId:J

    .line 110
    iput-boolean v2, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->isFriend:Z

    .line 111
    return-void

    .line 98
    :cond_0
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->email:Ljava/lang/String;

    goto :goto_0

    .line 105
    :cond_1
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->phone:Ljava/lang/String;

    goto :goto_1
.end method

.method protected constructor <init>(Ljava/lang/String;JZJLjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/facebook/katana/util/jsonmirror/JMCachingDictDestination;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {v0, p8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 70
    invoke-virtual {v1, p7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    iput-object p1, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->name:Ljava/lang/String;

    .line 73
    iput-wide p2, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->recordId:J

    .line 74
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->isFriend:Z

    .line 75
    iput-wide p5, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->userId:J

    .line 76
    iput-object p7, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->phone:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->phones:Ljava/util/List;

    .line 78
    iput-object p8, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->email:Ljava/lang/String;

    .line 79
    iput-object v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->emails:Ljava/util/List;

    .line 80
    return-void
.end method

.method public static a(Lcom/facebook/katana/model/FacebookPhonebookContact;)I
    .locals 1
    .parameter

    .prologue
    .line 166
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 167
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    invoke-static {v0}, Lcom/facebook/katana/model/FacebookPhonebookContact;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static a(Ljava/util/List;)Ljava/lang/String;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/model/FacebookPhonebookContact;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 122
    :try_start_0
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 123
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/model/FacebookPhonebookContact;

    .line 124
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 126
    iget-object v1, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->name:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 127
    const-string v1, "name"

    iget-object v5, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->name:Ljava/lang/String;

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 130
    :cond_0
    iget-object v1, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->emails:Ljava/util/List;

    .line 131
    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 132
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 133
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 134
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 156
    :catch_0
    move-exception v0

    .line 157
    const-string v1, "JMCachingDictDestination"

    const-string v2, "How do we get a JSONException when *encoding* data? %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/facebook/katana/util/Log;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    const-string v0, ""

    :goto_2
    return-object v0

    .line 136
    :cond_1
    :try_start_1
    const-string v1, "emails"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 139
    :cond_2
    iget-object v1, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->phones:Ljava/util/List;

    .line 140
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 141
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 142
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 143
    invoke-virtual {v5, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_3

    .line 145
    :cond_3
    const-string v1, "phones"

    invoke-virtual {v4, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_4
    iget-wide v5, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->recordId:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-eqz v1, :cond_5

    .line 149
    const-string v1, "record_id"

    iget-wide v5, v0, Lcom/facebook/katana/model/FacebookPhonebookContact;->recordId:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    :cond_5
    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto/16 :goto_0

    .line 155
    :cond_6
    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 2

    .prologue
    .line 176
    const-string v0, ""

    .line 177
    iget-object v1, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->email:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 178
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->email:Ljava/lang/String;

    .line 183
    :cond_0
    :goto_0
    return-object v0

    .line 179
    :cond_1
    iget-object v1, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->phone:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/facebook/katana/model/FacebookPhonebookContact;->phone:Ljava/lang/String;

    goto :goto_0
.end method

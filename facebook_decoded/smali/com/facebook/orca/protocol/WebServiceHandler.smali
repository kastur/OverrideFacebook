.class public Lcom/facebook/orca/protocol/WebServiceHandler;
.super Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;
.source "WebServiceHandler.java"


# instance fields
.field private final A:Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

.field private final B:Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;

.field private final C:Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;

.field private final D:Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

.field private final E:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

.field private final F:Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;

.field private final G:Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;

.field private final H:Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;

.field private final I:Lcom/facebook/orca/protocol/methods/ChatSetVisibilityMethod;

.field private final J:Lcom/facebook/orca/protocol/methods/ChatGetVisibilityMethod;

.field private final K:Lcom/facebook/orca/protocol/methods/PushTraceInfoConfirmationMethod;

.field private final L:Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;

.field private final M:Lcom/facebook/orca/rollout/OrcaRolloutManager;

.field private final N:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

.field private final O:Lcom/facebook/orca/protocol/methods/AuthExpireSessionMethod;

.field private final a:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/BatchRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

.field private final e:Lcom/facebook/orca/protocol/methods/AuthenticateMethod;

.field private final f:Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

.field private final g:Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;

.field private final h:Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;

.field private final i:Lcom/facebook/orca/protocol/methods/FetchMessageMethod;

.field private final j:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

.field private final k:Lcom/facebook/contacts/protocol/FetchAllContactsMethod;

.field private final l:Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

.field private final m:Lcom/facebook/orca/protocol/methods/SendMessageMethod;

.field private final n:Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

.field private final o:Lcom/facebook/orca/protocol/methods/AddMembersMethod;

.field private final p:Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

.field private final q:Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;

.field private final r:Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;

.field private final s:Lcom/facebook/orca/protocol/methods/UploadShareMethod;

.field private final t:Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;

.field private final u:Lcom/facebook/orca/protocol/methods/MarkThreadMethod;

.field private final v:Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;

.field private final w:Lcom/facebook/orca/protocol/methods/DeleteMessagesMethod;

.field private final x:Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;

.field private final y:Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;

.field private final z:Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/facebook/orca/auth/OrcaAuthenticationManager;Lcom/facebook/orca/protocol/methods/AuthenticateMethod;Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;Lcom/facebook/orca/protocol/methods/FetchThreadMethod;Lcom/facebook/contacts/protocol/FetchAllContactsMethod;Lcom/facebook/orca/protocol/methods/GetMeUserMethod;Lcom/facebook/orca/protocol/methods/SendMessageMethod;Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;Lcom/facebook/orca/protocol/methods/FetchMessageMethod;Lcom/facebook/orca/protocol/methods/AddMembersMethod;Lcom/facebook/orca/protocol/methods/CreateThreadMethod;Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;Lcom/facebook/orca/protocol/methods/UploadShareMethod;Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;Lcom/facebook/orca/protocol/methods/MarkThreadMethod;Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;Lcom/facebook/orca/protocol/methods/DeleteMessagesMethod;Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;Lcom/facebook/orca/protocol/methods/SendViaChatHandler;Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;Lcom/facebook/orca/protocol/methods/ChatSetVisibilityMethod;Lcom/facebook/orca/protocol/methods/ChatGetVisibilityMethod;Lcom/facebook/orca/protocol/methods/PushTraceInfoConfirmationMethod;Lcom/facebook/orca/rollout/OrcaRolloutManager;Lcom/facebook/orca/protocol/methods/AuthExpireSessionMethod;Lcom/facebook/orca/prefs/OrcaSharedPreferences;)V
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SingleMethodRunner;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/BatchRunner;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/orca/protocol/base/SimulatedBatchRunner;",
            ">;",
            "Lcom/facebook/orca/auth/OrcaAuthenticationManager;",
            "Lcom/facebook/orca/protocol/methods/AuthenticateMethod;",
            "Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchThreadMethod;",
            "Lcom/facebook/contacts/protocol/FetchAllContactsMethod;",
            "Lcom/facebook/orca/protocol/methods/GetMeUserMethod;",
            "Lcom/facebook/orca/protocol/methods/SendMessageMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchMessageMethod;",
            "Lcom/facebook/orca/protocol/methods/AddMembersMethod;",
            "Lcom/facebook/orca/protocol/methods/CreateThreadMethod;",
            "Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;",
            "Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;",
            "Lcom/facebook/orca/protocol/methods/UploadShareMethod;",
            "Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;",
            "Lcom/facebook/orca/protocol/methods/MarkThreadMethod;",
            "Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;",
            "Lcom/facebook/orca/protocol/methods/DeleteMessagesMethod;",
            "Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;",
            "Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;",
            "Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;",
            "Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;",
            "Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;",
            "Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;",
            "Lcom/facebook/orca/protocol/methods/SendViaChatHandler;",
            "Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;",
            "Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;",
            "Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;",
            "Lcom/facebook/orca/protocol/methods/ChatSetVisibilityMethod;",
            "Lcom/facebook/orca/protocol/methods/ChatGetVisibilityMethod;",
            "Lcom/facebook/orca/protocol/methods/PushTraceInfoConfirmationMethod;",
            "Lcom/facebook/orca/rollout/OrcaRolloutManager;",
            "Lcom/facebook/orca/protocol/methods/AuthExpireSessionMethod;",
            "Lcom/facebook/orca/prefs/OrcaSharedPreferences;",
            ")V"
        }
    .end annotation

    .prologue
    .line 129
    const-string v1, "WebServiceHandler"

    invoke-direct {p0, v1}, Lcom/facebook/orca/server/AbstractOrcaServiceHandlerFilter;-><init>(Ljava/lang/String;)V

    .line 130
    iput-object p1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    .line 131
    iput-object p2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Ljavax/inject/Provider;

    .line 132
    iput-object p3, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    .line 133
    iput-object p4, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->d:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    .line 134
    iput-object p5, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->e:Lcom/facebook/orca/protocol/methods/AuthenticateMethod;

    .line 135
    iput-object p6, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->f:Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

    .line 136
    iput-object p7, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->g:Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;

    .line 137
    iput-object p8, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->h:Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;

    .line 138
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->i:Lcom/facebook/orca/protocol/methods/FetchMessageMethod;

    .line 139
    iput-object p9, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->j:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    .line 140
    iput-object p10, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->k:Lcom/facebook/contacts/protocol/FetchAllContactsMethod;

    .line 141
    iput-object p11, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->l:Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    .line 142
    iput-object p12, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->m:Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    .line 143
    iput-object p13, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->n:Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

    .line 144
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->o:Lcom/facebook/orca/protocol/methods/AddMembersMethod;

    .line 145
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->p:Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    .line 146
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->q:Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;

    .line 147
    move-object/from16 v0, p18

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->r:Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;

    .line 148
    move-object/from16 v0, p19

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->s:Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    .line 149
    move-object/from16 v0, p20

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->t:Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;

    .line 150
    move-object/from16 v0, p21

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->u:Lcom/facebook/orca/protocol/methods/MarkThreadMethod;

    .line 151
    move-object/from16 v0, p22

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->v:Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;

    .line 152
    move-object/from16 v0, p23

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->w:Lcom/facebook/orca/protocol/methods/DeleteMessagesMethod;

    .line 153
    move-object/from16 v0, p24

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->x:Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;

    .line 154
    move-object/from16 v0, p25

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->y:Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;

    .line 155
    move-object/from16 v0, p26

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->z:Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;

    .line 156
    move-object/from16 v0, p27

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->A:Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

    .line 157
    move-object/from16 v0, p28

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->B:Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;

    .line 158
    move-object/from16 v0, p29

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->C:Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;

    .line 159
    move-object/from16 v0, p30

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->D:Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    .line 160
    move-object/from16 v0, p31

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->E:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    .line 161
    move-object/from16 v0, p32

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->F:Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;

    .line 162
    move-object/from16 v0, p33

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->G:Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;

    .line 163
    move-object/from16 v0, p34

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->L:Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;

    .line 164
    move-object/from16 v0, p35

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->H:Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;

    .line 165
    move-object/from16 v0, p36

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->I:Lcom/facebook/orca/protocol/methods/ChatSetVisibilityMethod;

    .line 166
    move-object/from16 v0, p37

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->J:Lcom/facebook/orca/protocol/methods/ChatGetVisibilityMethod;

    .line 167
    move-object/from16 v0, p38

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->K:Lcom/facebook/orca/protocol/methods/PushTraceInfoConfirmationMethod;

    .line 168
    move-object/from16 v0, p39

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->M:Lcom/facebook/orca/rollout/OrcaRolloutManager;

    .line 169
    move-object/from16 v0, p40

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->O:Lcom/facebook/orca/protocol/methods/AuthExpireSessionMethod;

    .line 170
    move-object/from16 v0, p41

    iput-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->N:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    .line 171
    return-void
.end method

.method private a(Lcom/facebook/orca/protocol/methods/AuthenticationResult;)Lcom/facebook/orca/auth/FacebookCredentials;
    .locals 3
    .parameter

    .prologue
    .line 208
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/methods/AuthenticationResult;->b()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->N:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->b()Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    move-result-object v0

    .line 210
    sget-object v1, Lcom/facebook/orca/prefs/PrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    invoke-virtual {p1}, Lcom/facebook/orca/protocol/methods/AuthenticationResult;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;

    .line 211
    invoke-virtual {v0}, Lcom/facebook/orca/prefs/OrcaSharedPreferences$Editor;->a()V

    .line 215
    :cond_0
    invoke-virtual {p1}, Lcom/facebook/orca/protocol/methods/AuthenticationResult;->a()Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->d:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-interface {v1}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->a()V

    .line 217
    return-object v0
.end method

.method private a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/server/NewMessageResult;
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x0

    .line 477
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 481
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 482
    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->w()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v0

    .line 485
    invoke-virtual {v0}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/attachments/MediaResource$Type;->VIDEO:Lcom/facebook/orca/attachments/MediaResource$Type;

    if-ne v1, v2, :cond_3

    .line 486
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->s:Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    invoke-static {v1, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "attachment-upload"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 490
    const-string v0, "{result=attachment-upload:$.id}"

    .line 495
    :goto_0
    new-instance v1, Lcom/facebook/orca/protocol/methods/SendMessageMethod$Params;

    invoke-direct {v1, p1, v0}, Lcom/facebook/orca/protocol/methods/SendMessageMethod$Params;-><init>(Lcom/facebook/orca/threads/Message;Ljava/lang/String;)V

    .line 497
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->m:Lcom/facebook/orca/protocol/methods/SendMessageMethod;

    invoke-static {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "send"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 503
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->i:Lcom/facebook/orca/protocol/methods/FetchMessageMethod;

    const-string v1, "{result=send:$.id}"

    invoke-static {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "fetch_sent"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "send"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 510
    new-instance v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    invoke-virtual {p1}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/FetchMoreMessagesParams;-><init>(Lcom/facebook/orca/server/ThreadCriteria;JJI)V

    .line 516
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->n:Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

    invoke-static {v1, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "fetch"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "send"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 523
    const-string v0, "sendMessage"

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 524
    const-string v0, "send"

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    .line 525
    const-string v0, "fetch_sent"

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMessageResult;

    .line 526
    const-string v1, "fetch"

    invoke-virtual {v7, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 528
    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchMessageResult;->c()Lcom/facebook/orca/threads/Message;

    move-result-object v3

    .line 531
    const/4 v2, 0x0

    .line 532
    invoke-virtual {v1}, Lcom/facebook/orca/server/FetchMoreMessagesResult;->c()Lcom/facebook/orca/threads/MessagesCollection;

    move-result-object v4

    .line 533
    invoke-virtual {v4}, Lcom/facebook/orca/threads/MessagesCollection;->b()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 534
    invoke-virtual {v0}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 535
    const/4 v0, 0x1

    .line 539
    :goto_1
    if-nez v0, :cond_1

    move-object v4, v8

    .line 544
    :cond_1
    new-instance v0, Lcom/facebook/orca/server/NewMessageResult;

    sget-object v1, Lcom/facebook/orca/server/DataFreshnessResult;->FROM_SERVER:Lcom/facebook/orca/server/DataFreshnessResult;

    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/orca/server/NewMessageResult;-><init>(Lcom/facebook/orca/server/DataFreshnessResult;Ljava/lang/String;Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/threads/MessagesCollection;J)V

    return-object v0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    move-object v0, v8

    goto/16 :goto_0
.end method


# virtual methods
.method protected final A(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 715
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 716
    const-string v1, "requestSmsConfirmationCodeParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RequestSmsConfirmationCodeParams;

    .line 719
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 720
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->A:Lcom/facebook/orca/protocol/methods/RequestSmsConfirmationCodeMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 721
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final B(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 728
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 729
    const-string v1, "confirmPhoneParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ConfirmPhoneParams;

    .line 732
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 735
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->B:Lcom/facebook/orca/protocol/methods/ConfirmPhoneMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "confirm-phone"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 740
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->l:Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "get-me-user"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "confirm-phone"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 746
    const-string v0, "confirmPhone"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 748
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/GetMeUserResult;

    .line 749
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->d:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-virtual {v0}, Lcom/facebook/orca/server/GetMeUserResult;->c()Lcom/facebook/orca/users/User;

    invoke-interface {v1}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->f()V

    .line 750
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final C(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 797
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 798
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 799
    const-string v2, "setSettingsParams"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/SetSettingsParams;

    .line 800
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->F:Lcom/facebook/orca/protocol/methods/SetUserSettingsMethod;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final D(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 808
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->a()Ljava/lang/String;

    .line 809
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->H:Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/methods/HoneyAnalyticsUploadHandler;->a()V

    .line 810
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final E(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 839
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 840
    const-string v1, "traceInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 841
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 842
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->K:Lcom/facebook/orca/protocol/methods/PushTraceInfoConfirmationMethod;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final F(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 851
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 852
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->O:Lcom/facebook/orca/protocol/methods/AuthExpireSessionMethod;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final G(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 353
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 354
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->k:Lcom/facebook/contacts/protocol/FetchAllContactsMethod;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/contacts/server/FetchAllContactsResult;

    .line 356
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final a(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 292
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 293
    const-string v1, "fetchThreadListParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListParams;

    .line 294
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 295
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->g:Lcom/facebook/orca/protocol/methods/FetchThreadListMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadListResult;

    .line 297
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final b(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 304
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 305
    const-string v1, "fetchMoreThreadsParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsParams;

    .line 306
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 307
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->h:Lcom/facebook/orca/protocol/methods/FetchMoreThreadsMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreThreadsResult;

    .line 309
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final c(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 8
    .parameter
    .parameter

    .prologue
    .line 316
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 317
    const-string v1, "fetchThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/facebook/orca/server/FetchThreadParams;

    .line 319
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 322
    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadParams;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 323
    new-instance v0, Lcom/facebook/orca/server/MarkThreadParams;

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadParams;->a()Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/server/ThreadCriteria;->a()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/orca/server/MarkThreadParams$Mark;->READ:Lcom/facebook/orca/server/MarkThreadParams$Mark;

    const/4 v3, 0x1

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadParams;->d()J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/orca/server/MarkThreadParams;-><init>(Ljava/lang/String;Lcom/facebook/orca/server/MarkThreadParams$Mark;ZJ)V

    .line 328
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->u:Lcom/facebook/orca/protocol/methods/MarkThreadMethod;

    invoke-static {v1, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "update-last-read"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->j:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v0, v6}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v1, "fetch-thread"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/facebook/orca/server/FetchThreadParams;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "update-last-read"

    :goto_0
    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 342
    const-string v0, "fetchThread"

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 345
    const-string v0, "fetch-thread"

    invoke-virtual {v7, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 346
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0

    .line 334
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final d(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 397
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 398
    const-string v1, "createThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/CreateThreadParams;

    .line 399
    invoke-virtual {v0}, Lcom/facebook/orca/server/CreateThreadParams;->a()Lcom/facebook/orca/threads/Message;

    move-result-object v3

    .line 402
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 403
    const/4 v2, 0x0

    .line 404
    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->x()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 405
    invoke-virtual {v3}, Lcom/facebook/orca/threads/Message;->w()Lcom/facebook/orca/attachments/MediaResource;

    move-result-object v3

    .line 408
    invoke-virtual {v3}, Lcom/facebook/orca/attachments/MediaResource;->a()Lcom/facebook/orca/attachments/MediaResource$Type;

    move-result-object v4

    sget-object v5, Lcom/facebook/orca/attachments/MediaResource$Type;->VIDEO:Lcom/facebook/orca/attachments/MediaResource$Type;

    if-ne v4, v5, :cond_0

    .line 409
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->s:Lcom/facebook/orca/protocol/methods/UploadShareMethod;

    invoke-static {v2, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    const-string v3, "attachment-upload"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 413
    const-string v2, "{result=attachment-upload:$.id}"

    .line 418
    :cond_0
    new-instance v3, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;

    invoke-direct {v3, v0, v2}, Lcom/facebook/orca/protocol/methods/CreateThreadMethod$Params;-><init>(Lcom/facebook/orca/server/CreateThreadParams;Ljava/lang/String;)V

    .line 420
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->p:Lcom/facebook/orca/protocol/methods/CreateThreadMethod;

    invoke-static {v0, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "create-thread"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 426
    new-instance v0, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v2, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const-string v2, "{result=create-thread:$.tid}"

    invoke-static {v2}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 431
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->j:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "fetch-thread"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "create-thread"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 438
    const-string v0, "createThread"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 439
    const-string v0, "fetch-thread"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 442
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final f(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 450
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v1

    .line 451
    const-string v0, "outgoingMessage"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/threads/Message;

    .line 452
    const-string v2, "userKeyInCanonicalThread"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 453
    invoke-static {v1}, Lcom/facebook/orca/users/UserKey;->a(Ljava/lang/String;)Lcom/facebook/orca/users/UserKey;

    move-result-object v1

    .line 462
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->E:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    invoke-virtual {v2, v0}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a(Lcom/facebook/orca/threads/Message;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 464
    :try_start_0
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->E:Lcom/facebook/orca/protocol/methods/SendViaChatHandler;

    invoke-virtual {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/SendViaChatHandler;->a(Lcom/facebook/orca/threads/Message;Lcom/facebook/orca/users/UserKey;)Lcom/facebook/orca/server/NewMessageResult;

    move-result-object v1

    .line 466
    invoke-static {v1}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 473
    :goto_0
    return-object v0

    .line 467
    :catch_0
    move-exception v1

    .line 468
    const-string v2, "orca:WebServiceHandler"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/facebook/orca/debug/BLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 473
    :cond_0
    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/WebServiceHandler;->a(Lcom/facebook/orca/threads/Message;)Lcom/facebook/orca/server/NewMessageResult;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    goto :goto_0
.end method

.method protected final g(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 363
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 364
    const-string v1, "addMembersParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/AddMembersParams;

    .line 367
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 368
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->o:Lcom/facebook/orca/protocol/methods/AddMembersMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    const-string v3, "add-members"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 374
    new-instance v2, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v3, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/AddMembersParams;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 379
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->j:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "fetch"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "add-members"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 386
    const-string v0, "addMembers"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 390
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final h(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 581
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 582
    const-string v1, "removeMemberParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RemoveMemberParams;

    .line 585
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 586
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->t:Lcom/facebook/orca/protocol/methods/RemoveMemberMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    const-string v3, "remove-members"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 591
    new-instance v2, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v3, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v2, v3}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/facebook/orca/server/RemoveMemberParams;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 596
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->j:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "fetch"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v2, "remove-members"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 603
    const-string v0, "removeMember"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 606
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 607
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final i(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 614
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 615
    const-string v1, "markThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/MarkThreadParams;

    .line 616
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 617
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->u:Lcom/facebook/orca/protocol/methods/MarkThreadMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final l(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 625
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 626
    const-string v1, "deleteThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteThreadParams;

    .line 627
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 628
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->v:Lcom/facebook/orca/protocol/methods/DeleteThreadMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final m(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 636
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 637
    const-string v1, "deleteMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/DeleteMessagesParams;

    .line 638
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 639
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->w:Lcom/facebook/orca/protocol/methods/DeleteMessagesMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final n(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 647
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 648
    const-string v1, "modifyThreadParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/ModifyThreadParams;

    .line 651
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->c:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 654
    const/4 v2, 0x0

    .line 655
    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 656
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->x:Lcom/facebook/orca/protocol/methods/SetThreadNameMethod;

    invoke-static {v2, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    const-string v3, "setThreadName"

    invoke-virtual {v2, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 660
    const-string v2, "setThreadName"

    .line 664
    :cond_0
    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->d()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 665
    iget-object v3, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->y:Lcom/facebook/orca/protocol/methods/SetThreadImageMethod;

    invoke-static {v3, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v3

    const-string v4, "setThreadImage"

    invoke-virtual {v3, v4}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 670
    const-string v2, "setThreadImage"

    .line 673
    :cond_1
    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->f()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 674
    iget-object v3, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->C:Lcom/facebook/orca/protocol/methods/SetThreadMuteUntilMethod;

    invoke-static {v3, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v3

    const-string v4, "muteThread"

    invoke-virtual {v3, v4}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 679
    const-string v2, "muteThread"

    .line 683
    :cond_2
    new-instance v3, Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    invoke-direct {v3}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;-><init>()V

    sget-object v4, Lcom/facebook/orca/server/DataFreshnessParam;->CHECK_SERVER_FOR_NEW_DATA:Lcom/facebook/orca/server/DataFreshnessParam;

    invoke-virtual {v3, v4}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/DataFreshnessParam;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/facebook/orca/server/ModifyThreadParams;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/ThreadCriteria;->a(Ljava/lang/String;)Lcom/facebook/orca/server/ThreadCriteria;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(Lcom/facebook/orca/server/ThreadCriteria;)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->a(I)Lcom/facebook/orca/server/FetchThreadParamsBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/server/FetchThreadParamsBuilder;->g()Lcom/facebook/orca/server/FetchThreadParams;

    move-result-object v0

    .line 688
    iget-object v3, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->j:Lcom/facebook/orca/protocol/methods/FetchThreadMethod;

    invoke-static {v3, v0}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    const-string v3, "fetch"

    invoke-virtual {v0, v3}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->b(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 695
    const-string v0, "modifyThread"

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 698
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchThreadResult;

    .line 699
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final p(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 706
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 707
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->z:Lcom/facebook/orca/protocol/methods/MarkFolderSeenMethod;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 708
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final r(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 757
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 760
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->D:Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "appConfig"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 766
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->G:Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "gk"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 772
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->L:Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "rollouts"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 777
    const-string v1, "handleGetAppInfo"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 780
    const-string v1, "appConfig"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/appconfig/AppConfig;

    .line 783
    const-string v2, "gk"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 786
    const-string v3, "rollouts"

    invoke-virtual {v0, v3}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 788
    const/4 v3, 0x2

    new-array v3, v3, [Landroid/util/Pair;

    const/4 v4, 0x0

    const-string v5, "gateKeepers"

    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v3, v4

    const/4 v2, 0x1

    const-string v4, "rollouts"

    invoke-static {v4, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    aput-object v0, v3, v2

    invoke-static {v1, v3}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;[Landroid/util/Pair;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final s(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 817
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    .line 818
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 819
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->J:Lcom/facebook/orca/protocol/methods/ChatGetVisibilityMethod;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 820
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final t(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 827
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 828
    const-string v1, "chatSetVisibilityParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 829
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 830
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->I:Lcom/facebook/orca/protocol/methods/ChatSetVisibilityMethod;

    invoke-virtual {v0, v2, v1}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Ljava/lang/String;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final u(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 569
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 570
    const-string v1, "fetchMoreMessagesParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesParams;

    .line 571
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 572
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->n:Lcom/facebook/orca/protocol/methods/FetchMoreMessagesMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/FetchMoreMessagesResult;

    .line 574
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final v(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 7
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 226
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->a:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/BatchRunner;

    .line 229
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->l:Lcom/facebook/orca/protocol/methods/GetMeUserMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 235
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->D:Lcom/facebook/orca/protocol/methods/FetchAppConfigMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "appConfig"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 241
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->G:Lcom/facebook/orca/protocol/methods/FetchGatekeepersMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "gk"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 247
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->M:Lcom/facebook/orca/rollout/OrcaRolloutManager;

    invoke-static {}, Lcom/facebook/orca/rollout/OrcaRolloutManager;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 248
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->L:Lcom/facebook/orca/protocol/methods/FetchRolloutsMethod;

    invoke-static {v1, v3}, Lcom/facebook/orca/protocol/base/BatchOperation;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    const-string v2, "rollouts"

    invoke-virtual {v1, v2}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a(Ljava/lang/String;)Lcom/facebook/orca/protocol/base/BatchOperation$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/orca/protocol/base/BatchOperation$Builder;->a()Lcom/facebook/orca/protocol/base/BatchOperation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Lcom/facebook/orca/protocol/base/BatchOperation;)V

    .line 254
    :cond_0
    const-string v1, "handleLogin"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->b(Ljava/lang/String;)V

    .line 257
    const-string v1, "user"

    invoke-virtual {v0, v1}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/server/GetMeUserResult;

    .line 258
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->d:Lcom/facebook/orca/auth/OrcaAuthenticationManager;

    invoke-virtual {v1}, Lcom/facebook/orca/server/GetMeUserResult;->c()Lcom/facebook/orca/users/User;

    invoke-interface {v2}, Lcom/facebook/orca/auth/OrcaAuthenticationManager;->f()V

    .line 261
    const-string v2, "appConfig"

    invoke-virtual {v0, v2}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/orca/appconfig/AppConfig;

    .line 264
    const-string v3, "gk"

    invoke-virtual {v0, v3}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 267
    const-string v4, "rollouts"

    invoke-virtual {v0, v4}, Lcom/facebook/orca/protocol/base/BatchRunner;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 269
    const/4 v4, 0x3

    new-array v4, v4, [Landroid/util/Pair;

    const/4 v5, 0x0

    const-string v6, "appConfig"

    invoke-static {v6, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    aput-object v2, v4, v5

    const/4 v2, 0x1

    const-string v5, "gateKeepers"

    invoke-static {v5, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x2

    const-string v3, "rollouts"

    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    aput-object v0, v4, v2

    invoke-static {v1, v4}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;[Landroid/util/Pair;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final w(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 177
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 178
    const-string v1, "passwordCredentials"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/auth/PasswordCredentials;

    .line 179
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->N:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 180
    new-instance v2, Lcom/facebook/orca/protocol/methods/AuthenticateMethod$Params;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/AuthenticateMethod$Params;-><init>(Lcom/facebook/orca/auth/PasswordCredentials;Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 183
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->e:Lcom/facebook/orca/protocol/methods/AuthenticateMethod;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/methods/AuthenticationResult;

    .line 185
    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/WebServiceHandler;->a(Lcom/facebook/orca/protocol/methods/AuthenticationResult;)Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final x(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 193
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 194
    const-string v1, "accessToken"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->N:Lcom/facebook/orca/prefs/OrcaSharedPreferences;

    sget-object v2, Lcom/facebook/orca/prefs/PrefKeys;->f:Lcom/facebook/orca/prefs/PrefKey;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/facebook/orca/prefs/OrcaSharedPreferences;->a(Lcom/facebook/orca/prefs/PrefKey;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    new-instance v2, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;

    invoke-direct {v2, v0, v1}, Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod$Params;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 200
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->f:Lcom/facebook/orca/protocol/methods/AuthenticateSsoMethod;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/protocol/methods/AuthenticationResult;

    .line 202
    invoke-direct {p0, v0}, Lcom/facebook/orca/protocol/WebServiceHandler;->a(Lcom/facebook/orca/protocol/methods/AuthenticationResult;)Lcom/facebook/orca/auth/FacebookCredentials;

    move-result-object v0

    .line 203
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final y(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 280
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 281
    const-string v1, "unregisterPushTokenParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/UnregisterPushTokenParams;

    .line 283
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 284
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->r:Lcom/facebook/orca/protocol/methods/UnregisterPushTokenMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    invoke-static {}, Lcom/facebook/orca/server/OperationResult;->b()Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method

.method protected final z(Lcom/facebook/orca/server/OperationParams;Lcom/facebook/orca/server/OrcaServiceHandler;)Lcom/facebook/orca/server/OperationResult;
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 556
    invoke-virtual {p1}, Lcom/facebook/orca/server/OperationParams;->b()Landroid/os/Bundle;

    move-result-object v0

    .line 557
    const-string v1, "registerPushTokenParams"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RegisterPushTokenParams;

    .line 559
    iget-object v1, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->b:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/orca/protocol/base/SingleMethodRunner;

    .line 560
    iget-object v2, p0, Lcom/facebook/orca/protocol/WebServiceHandler;->q:Lcom/facebook/orca/protocol/methods/RegisterPushTokenMethod;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/orca/protocol/base/SingleMethodRunner;->a(Lcom/facebook/orca/protocol/base/ApiMethod;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/orca/server/RegisterPushTokenResult;

    .line 562
    invoke-static {v0}, Lcom/facebook/orca/server/OperationResult;->a(Landroid/os/Parcelable;)Lcom/facebook/orca/server/OperationResult;

    move-result-object v0

    return-object v0
.end method
